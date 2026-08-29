# Mahesh Sreekumar Rajasree — Personal Academic Website

Source code for [mahe94.github.io](https://mahe94.github.io), a personal academic website built with [Jekyll](https://jekyllrb.com/) and a customized version of the [al-folio](https://github.com/alshedivat/al-folio) theme.

This README is the maintenance guide for the repository. It explains where each part of the website lives, how the site's custom content conventions work, how to preview changes locally, and how the production site is deployed.

## Table of contents

- [Quick start](#quick-start)
- [Repository structure](#repository-structure)
- [How Jekyll assembles the site](#how-jekyll-assembles-the-site)
- [Pages and navigation](#pages-and-navigation)
- [Updating the homepage](#updating-the-homepage)
- [Adding news](#adding-news)
- [Updating talks](#updating-talks)
- [Updating publications](#updating-publications)
- [Managing projects and subprojects](#managing-projects-and-subprojects)
- [Updating the CV](#updating-the-cv)
- [Updating teaching, resources, and blog posts](#updating-teaching-resources-and-blog-posts)
- [Managing images, PDFs, and other assets](#managing-images-pdfs-and-other-assets)
- [Site-wide configuration and appearance](#site-wide-configuration-and-appearance)
- [Validation checklist](#validation-checklist)
- [Deployment](#deployment)
- [Common problems](#common-problems)

## Quick start

The GitHub Actions deployment uses Ruby 3.2.1. Using the same Ruby version locally minimizes differences between local and production builds.

### Native Ruby setup

Prerequisites:

- Ruby 3.2.1
- Bundler
- Git

Install the Ruby dependencies:

```bash
bundle install
```

Start a development server with automatic browser refresh:

```bash
bundle exec jekyll serve --livereload
```

Open <http://127.0.0.1:4000/>. Stop the server with `Ctrl+C`.

Changes to `_config.yml` normally require restarting the development server. Most changes to Markdown, HTML, Sass, and JavaScript are detected automatically.

Create a production-style build without starting a server:

```bash
bundle exec jekyll build
```

The generated website is written to `_site/`. That directory is build output, is ignored by Git, and must not be edited by hand.

### Docker setup

The repository also provides two Docker Compose configurations. The prebuilt al-folio image is the quickest option:

```bash
docker compose up
```

To build the repository's `Dockerfile` locally instead:

```bash
docker compose -f docker-local.yml up --build
```

Both configurations serve the site at <http://127.0.0.1:8080/>.

## Repository structure

```text
.
├── _config.yml                 # Site identity, collections, plugins, features, and Jekyll Scholar
├── _pages/                     # Main pages and navigation entries
├── _news/                      # Dated homepage/news-archive announcements
├── _posts/                     # Blog posts
├── _projects/                  # Project pages, including the project hierarchy
├── _teachings/                 # Standalone course-description pages
├── _bibliography/
│   └── papers.bib              # Canonical publication database
├── _data/
│   ├── cv.yml                  # Structured content rendered on the CV page
│   ├── coauthors.yml           # Coauthor names and profile links
│   ├── repositories.yml        # Data for the optional repositories page
│   └── venues.yml              # Publication venue links and colors
├── _layouts/                   # Page-level HTML/Liquid templates
├── _includes/                  # Reusable components used by layouts and pages
├── _plugins/                   # Local Jekyll plugins and Liquid filters
├── _sass/                      # Sass partials for the site's appearance
├── assets/
│   ├── bibliography/           # Thesis and other bibliography-related PDFs
│   ├── css/main.scss           # Main stylesheet entry point
│   ├── img/                    # Profile, project, and site images
│   ├── js/                     # Browser-side JavaScript
│   ├── json/                   # Static JSON data
│   └── pdf/
│       └── slides/             # Talk and publication slides
├── paper-summaries/            # Long-form paper explanations for different audiences
├── blog/index.html             # Blog index page
├── news.html                   # Complete news archive page
├── 404.html                    # Not-found page
├── .github/workflows/          # Build/deployment and Docker-image workflows
├── bin/                        # Legacy/helper build and deployment scripts
├── Gemfile                     # Ruby dependencies
├── Dockerfile                  # Local container image definition
├── docker-compose.yml          # Development using the prebuilt image
└── docker-local.yml            # Development using a locally built image
```

The files most often changed during normal content updates are `_pages/`, `_news/`, `_projects/`, `_bibliography/papers.bib`, `_data/cv.yml`, and `assets/`.

## How Jekyll assembles the site

Jekyll reads YAML front matter at the beginning of Markdown or HTML files, converts their content to HTML, and wraps it in the selected layout.

A typical page starts with:

```yaml
---
layout: page
title: Example Page
permalink: /example/
nav: true
nav_order: 7
---
```

Important front-matter fields used in this repository:

| Field | Purpose |
| --- | --- |
| `layout` | Selects a template from `_layouts/`. |
| `title` | Page heading and, when enabled, navigation label. |
| `permalink` | Stable public URL. Prefer explicit permalinks for content that may be renamed. |
| `description` | Short text shown below the page title or on project cards. |
| `nav` | Adds the page to the main navigation when `true`. |
| `nav_order` | Controls the order of navigation entries. |
| `img` | Project-card or page image. |
| `category` | Places a project in an enabled project category. |
| `importance` | Sort order for projects or sibling subprojects; lower numbers appear first. |

The main processing layers are:

1. Content and YAML front matter in `_pages/`, `_news/`, `_posts/`, `_projects/`, and `_teachings/`.
2. Structured data in `_data/` and BibTeX entries in `_bibliography/`.
3. Page templates in `_layouts/`.
4. Reusable components in `_includes/`.
5. Styling from `assets/css/main.scss` and `_sass/`.
6. Site-wide behavior and plugin settings from `_config.yml`.

## Pages and navigation

The main pages are:

| Public page | Source | Notes |
| --- | --- | --- |
| `/` | `_pages/about.md` | Homepage biography, profile image, news, selected papers, and social links. |
| `/publications/` | `_pages/publications.md` | Publication lists generated from `_bibliography/papers.bib`. |
| `/projects/` | `_pages/projects.md` | Categorized cards for top-level projects. |
| `/cv/` | `_pages/cv.md` and `_data/cv.yml` | Structured HTML CV plus downloadable PDF. |
| `/talks/` | `_pages/talks.md` | Invited, conference/workshop, and informal talks. |
| `/teaching/` | `_pages/teaching.md` | Teaching, supervision, and teaching assistance. |
| `/resources/` | `_pages/posts.md` | Curated external answers and resources. |
| `/news/` | `news.html` | Complete archive of `_news/` announcements. |
| `/blog/` | `blog/index.html` | Posts from `_posts/`. The blog navigation item is currently disabled in `_config.yml`. |
| `/review/home-editorial/` | `_pages/home-editorial.md` | Non-navigation homepage concept used for visual review. |

Navigation is generated by `_includes/header.html` from pages with `nav: true`, sorted by `nav_order`. To add a normal navigation item, add or update these fields in the page's front matter:

```yaml
nav: true
nav_order: 7
```

Set `nav: false` to keep a page accessible by URL without showing it in the navigation. `_pages/dropdown.md` demonstrates the supported dropdown-menu structure, although it is currently hidden.

## Updating the homepage

The live homepage is `_pages/about.md`.

### Biography and affiliation

Edit the Markdown/HTML below the front matter in `_pages/about.md`. The affiliation line below the name comes from `subtitle` in the front matter.

The repository also contains `_pages/home-editorial.md`, a separate design-review version of the homepage. It is not the live homepage. If the same biographical wording must remain visible in that review page, update it separately.

### Profile image

1. Add the image to `assets/img/`.
2. Set only its filename in the homepage front matter:

```yaml
profile:
  align: right
  image: mahe.jpeg
  image_circular: false
```

### Homepage sections

The following Boolean fields in `_pages/about.md` control homepage sections:

```yaml
news: true
latest_posts: false
selected_papers: true
social: true
```

The number of visible announcements is controlled by `announcements.limit` in `_config.yml`. Selected publications are BibTeX entries containing `selected={true}`.

### Name, email, social profiles, and contact note

Update `_config.yml`. Relevant fields include `first_name`, `middle_name`, `last_name`, `email`, the social-profile identifiers, `contact_note`, `url`, and `baseurl`.

## Adding news

News items live in `_news/` and use sequential filenames:

```text
announcement_1.md
announcement_2.md
...
announcement_41.md
```

For a new item, use the next unused number. Do not reuse an older filename.

The standard inline-news format is:

```markdown
---
layout: post
date: YYYY-MM-DD
inline: true
related_posts: false
---

Announcement text with an optional <a href="https://example.org/">link</a>.
```

Guidelines:

- Use an ISO date in `YYYY-MM-DD` format.
- Keep routine news concise enough to fit naturally in the homepage table.
- Use absolute URLs for external sites and root-relative paths such as `/assets/pdf/file.pdf` for local files.
- The homepage shows only the configured number of recent items; `/news/` shows the full archive.
- For a full standalone news post, set `inline: false`, add a `title`, and write the complete post body. Inline announcements are the normal convention in this repository.

## Updating talks

Talks are maintained manually in `_pages/talks.md` under three sections:

- Invited Talks
- Conference/Workshop Talks
- Informal Talks

Add a new item in reverse chronological order within the appropriate section. A typical entry is:

```markdown
* _Talk Title_, Host or Event, Location 2026 [<a href='../assets/pdf/slides/example.pdf'>Slides</a>]
```

Add `[Video]`, `[Paper]`, or other links only when relevant. Store local slide decks in `assets/pdf/slides/` and make sure the link matches the filename exactly, including capitalization and spaces.

For new files, prefer descriptive filenames without spaces, for example `event_name_2026.pdf`. Existing files with spaces should not be renamed casually because talks and BibTeX entries may already link to them.

When a visit or invited talk should also appear as news, create a separate `_news/announcement_N.md` item; updating the Talks page does not create news automatically.

## Updating publications

Publications are generated by Jekyll Scholar from `_bibliography/papers.bib`. Do not manually copy publication entries into `_pages/publications.md`.

### Add a publication

Add a valid BibTeX entry to `_bibliography/papers.bib`. For example:

```bibtex
@inproceedings{surname2026shortkey,
  author    = {Surname, First and Rajasree, Mahesh Sreekumar},
  title     = {Paper Title},
  booktitle = {Conference Name},
  year      = {2026},
  pdf       = {paper.pdf},
  html      = {https://example.org/paper},
  slides    = {slides/event_2026.pdf},
  selected  = {true},
  project_example = {true}
}
```

Supported link fields rendered as buttons include `pdf`, `arxiv`, `html`, `video`, `supp`, `blog`, `code`, `poster`, `slides`, `website`, and `summary`. Other useful fields include `abstract`, `bibtex_show`, `award`, `doi`, and `note`.

Local paths are resolved as follows:

- `pdf={paper.pdf}` points to `assets/pdf/paper.pdf`.
- `slides={slides/talk.pdf}` points to `assets/pdf/slides/talk.pdf`.
- A value beginning with `/`, such as `pdf={/assets/bibliography/thesis.pdf}`, is used as a root-relative site path.
- A value beginning with `http://` or `https://` is treated as an external URL.

### Make the year visible

`_pages/publications.md` explicitly lists the years to render. When adding the first entry for a new year, add that year at the beginning of the appropriate front-matter list:

```yaml
years: [2027, 2026, 2025, ...]
manuscript_years: [2027, 2026, ...]
thesis_years: [2027, 2023, ...]
```

Use the lists according to the entry's `status`:

| BibTeX status | Where it appears |
| --- | --- |
| `submission` | In the main year section, before accepted publications. |
| `manuscript` | In the separate Manuscripts section. |
| `thesis` | In the separate Theses section. |
| omitted or another value | In the normal publication list. |

Only add a year to a list when that section has an entry for it; empty year headings are otherwise rendered.

### Selected publications

Add `selected={true}` to show an entry in the Selected Publications section on the homepage. Remove it or set it to `false` to keep the entry only on the Publications page.

### Coauthor links

Add a coauthor to `_data/coauthors.yml` to link their displayed name to a profile:

```yaml
"Surname":
  - firstname: ["First"]
    url: https://example.org/profile
```

The spelling must correspond to the parsed BibTeX author name. Multiple people with the same surname can be listed as separate entries beneath that surname.

### Connect a publication to a project

Project pages use custom Boolean BibTeX fields such as:

```bibtex
project_llm = {true}
project_incompressible = {true}
project_hibe = {true}
project_quantum = {true}
project_symmetric = {true}
project_lattice = {true}
project_subsetsum = {true}
```

The project page selects matching entries with a query such as:

```yaml
related_publications: true
bibliography_query: "@*[project_quantum=true]"
```

Whenever a new internal BibTeX field is introduced, also add it to `filtered_bibtex_keywords` in `_config.yml`. This prevents internal metadata from appearing when a visitor opens an entry's BibTeX block.

### Paper summaries

Long-form summaries live in `paper-summaries/`. A summary page can be attached to a publication with a root-relative `summary` field:

```bibtex
summary = {/paper-summaries/example/}
```

Use `paper-summaries/TCC25.md` as the current template for a summary written for multiple audiences.

## Managing projects and subprojects

Project pages live in `_projects/`. Their filenames encode the hierarchy and their front matter controls rendering, ordering, categories, URLs, and related publications.

### Filename convention

Use lowercase snake_case for the descriptive part of a filename.

| Hierarchy level | Pattern | Example |
| --- | --- | --- |
| Project | `N_project_project_name.md` | `2_project_advanced_encryption.md` |
| Subproject | `N_M_subproject_subproject_name.md` | `2_1_subproject_incompressible_cryptography.md` |
| Subsubproject | `N_M_K_subsubproject_name.md` | `2_1_1_subsubproject_example.md` |
| Deeper level | Continue the numeric path and repeat `sub` in the type label | `2_1_1_1_subsubsubproject_example.md` |

Each child numbering sequence starts at `1` within its parent. The numeric prefix describes the complete path through the hierarchy.

Before assigning or changing numbers:

1. Inspect all files in `_projects/`.
2. Identify top-level projects and each parent's children.
3. Order siblings according to the intended display order.
4. Rename the complete hierarchy consistently.
5. Preserve every existing public URL with an explicit `permalink`.

Filename numbering is an organizational convention; Jekyll uses front matter, not the filename numbers, to build the visible hierarchy.

### Top-level project front matter

```yaml
---
layout: page
title: Project Title
description: One-sentence card description
img: assets/img/project_image.png
importance: 1
category: Ongoing Projects
permalink: /projects/stable-project-url/
related_publications: true
bibliography_query: "@*[project_example=true]"
---
```

Valid displayed categories are currently defined in `_pages/projects.md`:

```yaml
display_categories: [Ongoing Projects, Past Projects]
```

A new category must be added to that list before it will appear. Top-level projects are sorted by `importance` within each category.

### Parent projects and child projects

A parent project needs a stable `project_key`:

```yaml
project_key: advanced-encryption
```

Each direct child points to that key:

```yaml
parent_project: advanced-encryption
importance: 1
```

The main Projects page deliberately excludes every item with `parent_project` set. The parent page is responsible for displaying its own children. The current parent-page Liquid block is:

```liquid
## Subprojects

<div class="projects">
  <div class="grid">
    {% assign subprojects = site.projects | where: "parent_project", page.project_key | sort: "importance" %}
    {%- for project in subprojects -%}
      {% include projects.html %}
    {%- endfor -%}
  </div>
</div>
```

For a subproject that itself has children, give that subproject its own `project_key`, set each next-level item's `parent_project` to that key, and include an equivalent child grid on the subproject page. The current repository has one implemented child level, but this metadata pattern supports deeper levels when each parent renders its direct children.

### Project content and images

Project bodies are regular Markdown with optional HTML and Liquid includes. The normal structure is:

1. Project image
2. Introduction
3. Motivation
4. Core questions
5. Main results
6. Automatically rendered references, when enabled

Store card images in `assets/img/`. The `img` front-matter path and any `{% include figure.html %}` path must both point to the correct file.

### Renaming a project safely

Changing a collection filename can change its generated URL when no explicit permalink is present. Before renaming, record the current public URL and retain it in front matter:

```yaml
permalink: /projects/existing-url/
```

After renaming, search for references to both the old filename and old URL, then build the site. Do not change a permalink solely to make it match a new filename unless intentionally breaking or redirecting the old URL.

## Updating the CV

The HTML CV and PDF CV are maintained separately.

### HTML CV

Edit `_data/cv.yml`. The layout supports these section types:

- `map` for name/value pairs
- `time_table` for dated education, experience, and award entries
- `list` for simple lists
- `nested_list` for grouped lists
- no `type` for a text section

The order of sections in `_data/cv.yml` is the order displayed on the page and in the CV sidebar.

### PDF CV

Replace `assets/pdf/Mahesh_Sreekumar_Rajasree_CV.pdf`, or change `cv_pdf` in `_pages/cv.md` if the filename changes:

```yaml
cv_pdf: Mahesh_Sreekumar_Rajasree_CV.pdf
```

Updating the PDF does not update `_data/cv.yml`, and updating `_data/cv.yml` does not regenerate the PDF. Keep both versions synchronized manually.

## Updating teaching, resources, and blog posts

### Teaching overview

Edit `_pages/teaching.md` for courses taught, invited lectures, supervision, and teaching-assistant experience. Keep entries reverse chronological within their sections.

Standalone course descriptions live in `_teachings/`. Each file must have front matter and an explicit permalink, for example:

```yaml
---
layout: page
title: Introduction to Quantum Computing
permalink: /teaching/introduction-to-quantum-computing/
nav: false
---
```

Add a link from `_pages/teaching.md` if visitors should be able to discover the standalone course page.

### Resources page

Edit `_pages/posts.md` to update the curated Cryptography Stack Exchange, Mathematics Stack Exchange, and related resource links. Despite its filename, this is the `/resources/` page, not the blog index.

### Blog posts

Add blog posts to `_posts/` using Jekyll's required filename format:

```text
YYYY-MM-DD-descriptive-title.md
```

Example front matter:

```yaml
---
layout: post
title: Post Title
date: 2026-08-29
description: Short summary
tags: crypto quantum
categories: research-posts
---
```

The blog exists at `/blog/`, but its main navigation item remains hidden while `blog_nav_title` is blank in `_config.yml`. Set `blog_nav_title` to a non-empty label to show it.

## Managing images, PDFs, and other assets

Use these locations consistently:

| Asset | Location |
| --- | --- |
| Profile and project images | `assets/img/` |
| Publication PDFs and certificates | `assets/pdf/` |
| Talk/publication slide decks | `assets/pdf/slides/` |
| Thesis PDFs used by the CV/publications | `assets/bibliography/` |
| Browser JavaScript | `assets/js/` |
| Static JSON | `assets/json/` |

Asset guidelines:

- Match filename capitalization exactly; deployment runs on Linux, where filenames are case-sensitive.
- Prefer lowercase descriptive names using underscores or hyphens and avoid spaces in new filenames.
- Do not place maintainable source files in `_site/`.
- Before deleting or renaming an asset, search the repository for its filename.
- Compress very large images and PDFs before committing when quality permits.
- Use meaningful image `alt` text when adding a new image directly in HTML or through an include.

Root-relative links such as `/assets/pdf/file.pdf` are safest for pages at different URL depths. Existing page-relative links such as `../assets/pdf/...` should be tested whenever a page's permalink changes.

## Site-wide configuration and appearance

### `_config.yml`

This is the central configuration file. It controls:

- Site title, name, email, description, URL, and language
- Social-profile links and analytics
- News and latest-post limits
- Collections and default permalinks
- Jekyll Scholar and BibTeX behavior
- Navigation-related feature flags
- Project categories and masonry layout
- MathJax, zoom, progress bar, dark mode, and other optional features
- External-link behavior
- Plugin and Sass library settings

After changing `_config.yml`, restart the local Jekyll server and run a clean build.

### Layouts and includes

Edit `_layouts/` when the structure of a whole page type needs to change. Important custom layouts include:

- `_layouts/about.html` for the live homepage
- `_layouts/page.html` for standard pages and project references
- `_layouts/bib.html` for each publication entry
- `_layouts/cv.html` for the structured CV
- `_layouts/home-concept.html` for the homepage review concept

Edit `_includes/` for reusable pieces such as the header, footer, social links, news table, project cards, selected papers, and CV section renderers.

### Styles

`assets/css/main.scss` is the stylesheet entry point and imports the partials under `_sass/`:

- `_variables.scss` for shared Sass variables
- `_themes.scss` for color themes
- `_layout.scss` for structural layout rules
- `_base.scss` for most general and page-specific styling
- `_distill.scss` for Distill-style posts
- `_home-concepts.scss` for the alternate homepage design

Prefer editing the relevant Sass partial instead of writing inline styles in page content. Jekyll compiles the Sass into the generated CSS.

### JavaScript

Site scripts live in `assets/js/` and are loaded by the layouts/includes. `_pages/publications.md` also contains page-specific JavaScript for the publication year rail. Test browser behavior at both desktop and narrow/mobile widths after JavaScript or layout changes.

### Local plugins

The `_plugins/` directory contains custom Ruby code for external posts, collapsible details, and hiding internal BibTeX fields. A plugin error can stop the entire Jekyll build, so always run a full build after modifying this directory.

## Validation checklist

Run these checks before committing:

```bash
git diff --check
bundle exec jekyll build
git status --short
```

For the same more-expensive build mode used by `bin/cibuild`:

```bash
bundle exec jekyll build --lsi
```

Then preview the affected pages locally and confirm:

- The build completes without an error.
- New files appear in `git status` and are not accidentally ignored.
- Navigation order and page headings are correct.
- News items have the correct date and links.
- Publication entries appear in the intended year/status section.
- Selected papers appear on the homepage when requested.
- Project cards appear under the correct category or parent.
- Project and asset URLs still work after renames.
- PDFs, slides, images, and external links open correctly.
- The page remains readable on desktop and mobile widths.
- No unrelated generated files from `_site/`, caches, or local tooling are committed.

Warnings about a temporary Bundler home can occur in restricted development environments; the important result is whether Jekyll reports a successful build.

## Deployment

The canonical deployment path is `.github/workflows/deploy.yml`.

- Pushes to `master` or `main` trigger a build and deployment.
- Pull requests to those branches run the build but do not deploy.
- The workflow can also be started manually with `workflow_dispatch`.
- GitHub Actions installs Ruby 3.2.1, installs `mermaid.cli`, runs `bundle exec jekyll build`, and publishes `_site/` using the GitHub Pages deployment action.

Normal release workflow:

1. Preview and validate locally.
2. Review `git diff` and `git status`.
3. Commit the intended source files and assets.
4. Push the commit to `master`.
5. Confirm the `deploy` workflow succeeds in GitHub Actions.
6. Check the affected page on [mahe94.github.io](https://mahe94.github.io).

`bin/deploy` is a legacy manual deployment script that creates/replaces a deployment branch and force-pushes it. The GitHub Actions workflow should be preferred for routine deployment. Do not run the manual script with unreviewed changes.

The other workflows named `deploy-image.yml` and `deploy-docker-tag.yml` are inherited Docker-image publishing workflows. They are not required for ordinary website content deployment.

## Common problems

### A new publication does not appear

Check that:

- The BibTeX entry is syntactically valid.
- Its year is included in the correct list in `_pages/publications.md`.
- Its `status` matches the intended section.
- The local Jekyll build completed successfully.

### A publication does not appear on a project page

The Boolean field in `_bibliography/papers.bib` must exactly match the project's `bibliography_query`. For example, `project_quantum={true}` matches `@*[project_quantum=true]`.

### A project or subproject card does not appear

Check `category`, `importance`, `parent_project`, and the parent's `project_key`. Top-level projects must not have `parent_project`. Child projects require a matching parent key and a child-rendering block on the parent page.

### A renamed page returns 404

Restore its previous explicit `permalink`, rebuild the site, and search for links that point to the old generated path. A filename rename and a public URL change are separate operations.

### A local asset works on macOS but fails after deployment

Check capitalization first. GitHub Actions builds on Linux, so `Talk.pdf` and `talk.pdf` are different files. Also verify spaces and punctuation in the linked filename.

### A configuration change is not visible locally

Stop and restart `bundle exec jekyll serve`. Jekyll does not reliably reload `_config.yml` during an existing server session.

### The site builds, but an edit is missing from Git

Run `git status --short`. New assets and renamed project files must be explicitly added to Git before committing; a successful local build does not stage them automatically.

## License and theme origin

The repository retains its `LICENSE` and `CONTRIBUTING.md` files from the theme project. Site-specific content belongs to the website owner; framework and theme code remains subject to its applicable upstream license.
