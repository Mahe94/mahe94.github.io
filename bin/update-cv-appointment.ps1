# Update the existing PDF in place while preserving its eight pages and links.
# No PDF source file is available; append a replacement first-page content stream.
$ErrorActionPreference = 'Stop'
$path = Join-Path $PSScriptRoot '../assets/pdf/Mahesh_Sreekumar_Rajasree_CV.pdf'
$encoding = [Text.Encoding]::GetEncoding(28591)
$bytes = [IO.File]::ReadAllBytes($path)
$pdf = $encoding.GetString($bytes)
if ($pdf.Contains('(Faculty of Mathematics, Informatics and Mechanics) Tj')) {
    Write-Output 'The PDF appointment is already updated.'
    exit 0
}
$match = [regex]::Match($pdf, '(?s)\b131 0 obj.*?stream\r?\n(.*?)\r?\nendstream')
if (!$match.Success) { throw 'Expected first-page content stream was not found.' }
$raw = $encoding.GetBytes($match.Groups[1].Value)
$inputStream = New-Object IO.MemoryStream(,$raw[2..($raw.Length - 5)])
$deflate = New-Object IO.Compression.DeflateStream($inputStream, [IO.Compression.CompressionMode]::Decompress)
$reader = New-Object IO.StreamReader($deflate, $encoding)
$content = $reader.ReadToEnd()
$reader.Dispose()
$headerPattern = '(?s)/F29 9\.9626 Tf 192\.99 683\.138 Td .*?/F61 9\.9626 Tf -188\.284 -38\.924 Td'
if (![regex]::IsMatch($content, $headerPattern)) { throw 'Unexpected PDF header layout.' }
$header = @'
/F29 9.9626 Tf
1 0 0 1 258 686 Tm (Assistant Professor) Tj
1 0 0 1 257 675 Tm (University of Warsaw) Tj
1 0 0 1 256 664 Tm (Institute of Informatics) Tj
/F29 8.5 Tf
1 0 0 1 210 653 Tm (Faculty of Mathematics, Informatics and Mechanics) Tj
/F29 9.9626 Tf
1 0 0 1 271 642 Tm (Warsaw, Poland) Tj
1 0 0 1 245 631 Tm (1 October 2026 - present) Tj
/F61 9.9626 Tf 1 0 0 1 72 620.304 Tm
'@
$content = [regex]::Replace($content, $headerPattern, $header)
$oldDates = '[(Decem)28(b)-28(er)-333(2024)-334(-)-333(Presen)28(t)]TJ'
if (!$content.Contains($oldDates)) { throw 'Expected CISPA employment dates were not found.' }
$content = $content.Replace($oldDates, '[(Dec 2024 - Sep 2026)]TJ')
$previousXref = [regex]::Matches($pdf, 'startxref\s+(\d+)\s+%%EOF')
if ($previousXref.Count -eq 0) { throw 'PDF cross-reference offset was not found.' }
$previousOffset = $previousXref[$previousXref.Count - 1].Groups[1].Value
$streamLength = $encoding.GetByteCount($content)
$objectOffset = $bytes.Length + 1
$object = "`n131 0 obj`n<< /Length $streamLength >>`nstream`n$content`nendstream`nendobj`n"
$xrefOffset = $bytes.Length + $encoding.GetByteCount($object)
$xref = "xref`n131 1`n" + $objectOffset.ToString('0000000000') + " 00000 n `ntrailer`n<< /Size 326 /Root 127 0 R /Info 26 0 R /Prev $previousOffset >>`nstartxref`n$xrefOffset`n%%EOF`n"
$output = New-Object IO.MemoryStream
$output.Write($bytes, 0, $bytes.Length)
$append = $encoding.GetBytes($object + $xref)
$output.Write($append, 0, $append.Length)
[IO.File]::WriteAllBytes($path, $output.ToArray())
$output.Dispose()
Write-Output 'Updated PDF affiliation, appointment start date, and CISPA end date.'
