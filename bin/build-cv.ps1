# Build the canonical CV in place; the website links directly to this PDF.
$ErrorActionPreference = 'Stop'
$cvDirectory = Join-Path $PSScriptRoot '../assets/pdf/CV'
Push-Location $cvDirectory
try {
    if (!(Test-Path -LiteralPath 'res.cls')) {
        throw 'Missing res.cls. Install the CTAN res class or place res.cls in assets/pdf/CV before building.'
    }
    # Two passes settle page references and list numbering.
    for ($pass = 1; $pass -le 2; $pass++) {
        & pdflatex -interaction=nonstopmode -halt-on-error -file-line-error Mahesh_Sreekumar_Rajasree_CV.tex
        if ($LASTEXITCODE -ne 0) { throw "CV compilation failed on pass $pass." }
    }
    Write-Output 'Built assets/pdf/CV/Mahesh_Sreekumar_Rajasree_CV.pdf'
}
finally {
    Pop-Location
}
