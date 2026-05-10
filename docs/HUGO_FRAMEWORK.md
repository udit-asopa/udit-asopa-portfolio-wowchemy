# Hugo Framework: Comprehensive Guide

**Last Updated:** May 10, 2026  
**Hugo Version:** v0.123.7 (extended)  
**Theme:** Wowchemy Academic

---

## Table of Contents

1. [What is Hugo?](#what-is-hugo)
2. [How Hugo Works](#how-hugo-works)
3. [Core Concepts](#core-concepts)
4. [Directory Structure](#directory-structure)
5. [Configuration](#configuration)
6. [Content Organization](#content-organization)
7. [Themes & Layouts](#themes--layouts)
8. [Asset Processing](#asset-processing)
9. [Build Process](#build-process)
10. [Development Workflow](#development-workflow)
11. [Deployment](#deployment)
12. [Performance Tips](#performance-tips)
13. [Troubleshooting](#troubleshooting)
14. [Resources](#resources)

---

## What is Hugo?

**Hugo** is a **static site generator (SSG)** written in Go, designed for speed and simplicity.

### Key Characteristics

| Aspect | Details |
|--------|---------|
| **Type** | Static Site Generator |
| **Language** | Go (compiled, extremely fast) |
| **Output** | Static HTML/CSS/JavaScript files |
| **Speed** | Builds sites in milliseconds |
| **Use Cases** | Blogs, portfolios, documentation, marketing sites |
| **Philosophy** | Keep it simple, make it fast |

### Why Use Hugo?

✅ **Speed** — Builds in milliseconds (vs. minutes with other SSGs)  
✅ **No Database** — Pure static files, easy to host anywhere  
✅ **No Server Required** — Just HTML/CSS/JS served by any web server  
✅ **Easy Deployment** — Push to GitHub, Netlify, or any hosting  
✅ **Flexible** — Support for themes, custom layouts, etc.  
✅ **Version Control** — All content is Markdown in Git  

---

## How Hugo Works

### The 3-Step Process

```
┌─────────────────────────────────────────────────────────┐
│                    YOUR CONTENT                          │
│  (Markdown files in content/ with YAML frontmatter)     │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│               HUGO BUILD ENGINE                          │
│  1. Read config files (config.toml, params, etc.)       │
│  2. Process Markdown files → HTML                       │
│  3. Apply theme templates (Wowchemy)                    │
│  4. Compile SCSS → CSS                                  │
│  5. Process images and assets                           │
│  6. Generate navigation, menus, etc.                    │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│                 STATIC WEBSITE                           │
│  (Complete HTML/CSS/JS ready for deployment)            │
│  Location: public/ directory                            │
└─────────────────────────────────────────────────────────┘
```

### Build Process Flow

```
1. INITIALIZE
   ├─ Read config.toml (baseURL, title, etc.)
   ├─ Load theme (Wowchemy)
   └─ Initialize module dependencies

2. PARSE CONTENT
   ├─ Scan content/ directory recursively
   ├─ Extract YAML frontmatter (metadata)
   ├─ Parse Markdown → HTML
   └─ Organize by taxonomy (tags, categories, etc.)

3. PROCESS ASSETS
   ├─ Compile SCSS/SASS → CSS
   ├─ Minify CSS/JavaScript (if enabled)
   ├─ Process images
   └─ Copy static files

4. APPLY TEMPLATES
   ├─ Select layout template based on content type
   ├─ Render with theme (Wowchemy provides page layouts)
   ├─ Inject content into HTML structure
   └─ Handle partials and includes

5. GENERATE PAGES
   ├─ Create HTML pages for each content file
   ├─ Generate index pages and listings
   ├─ Create taxonomy pages (tags, categories)
   ├─ Generate aliases and redirects
   └─ Create sitemap.xml and RSS feeds

6. OUTPUT
   └─ Write complete static site to public/
```

---

## Core Concepts

### 1. **Content**

**What it is:** Markdown files with metadata (frontmatter)

**Structure:**
```yaml
---
title: "Page Title"
date: 2024-01-15
draft: false
tags:
  - geospatial
  - python
---

# Your content here in Markdown...
```

**Location:** `content/` directory

**Supported Formats:**
- Markdown (.md)
- HTML (.html)
- YAML frontmatter (metadata)

---

### 2. **Frontmatter**

Metadata about your content in YAML format, between `---` markers.

**Common Fields:**
```yaml
---
title: "Page Title"              # Page name
date: 2024-01-15T10:00:00Z       # Publication date
lastmod: 2024-05-10              # Last modified
draft: false                      # Publish status (true = hidden)
type: "page"                      # Content type
slug: "custom-url"                # URL slug
tags: [tag1, tag2]                # Tags for categorization
categories: [cat1]                # Categories
featured: false                   # Feature on listing
weight: 10                        # Sort order
summary: "Short description"      # Summary text
authors: ["admin"]                # Author references
---
```

---

### 3. **Pages vs Posts**

| Aspect | Page | Post |
|--------|------|------|
| **Directory** | `content/` (any location) | `content/post/` |
| **Date** | Optional | Required |
| **List View** | May appear in listings | Appears in chronological lists |
| **Use Case** | Static content (about, projects) | Chronological content (blog) |
| **URL Structure** | `/section/title/` | `/post/title/` |

---

### 4. **Sections**

Directories in `content/` that group related content.

**Example:**
```
content/
├── experience/          → Section: Work experience
├── project/             → Section: Projects
├── publication/         → Section: Publications
├── skills/              → Section: Skills
└── home/                → Special: Homepage widgets
```

**Each section can have:**
- `_index.md` — Section overview page
- Multiple subdirectories with content
- Custom layouts via `layouts/section/`

---

### 5. **Taxonomies**

Ways to organize and categorize content.

**Built-in Taxonomies:**
- **Tags** — Labels for grouping (e.g., "python", "data-science")
- **Categories** — Broader groupings (e.g., "Education", "Experience")

**In Frontmatter:**
```yaml
tags:
  - geospatial
  - remote-sensing
  - python

categories:
  - professional
```

**Generated Pages:**
- `/tags/geospatial/` — All tagged pages
- `/categories/professional/` — All categorized pages

---

### 6. **Templates & Layouts**

Hugo uses Go templating to generate HTML.

**Template Types:**
- **Base Templates** — Overall page structure
- **Section Templates** — How section listing pages render
- **Single Templates** — Individual page layout
- **Partials** — Reusable components

**Example Hierarchy:**
```
layouts/
├── _default/
│   ├── baseof.html        # Base page structure
│   ├── single.html        # Individual page template
│   └── list.html          # Listing page template
├── partials/
│   ├── header.html        # Header component
│   ├── footer.html        # Footer component
│   └── widgets/           # Page widgets
└── section/
    ├── project/           # Custom project layout
    └── publication/       # Custom publication layout
```

---

### 7. **Theme (Wowchemy)**

A complete theme providing:
- **Layouts** — Pre-built page templates
- **Styles** — CSS/SCSS styling
- **Components** — Widgets for homepage sections
- **Configuration** — Default settings

**In this repo:**
```
Wowchemy provides:
├── layouts/               # Page templates
├── assets/               # SCSS, JavaScript
├── data/                 # Theme data (colors, fonts)
└── static/               # Theme assets
```

**Downloaded via Hugo Modules:**
```
go.mod specifies:
github.com/wowchemy/wowchemy-hugo-modules/wowchemy
```

---

## Directory Structure

### Root-Level Organization

```
.
├── config.toml                 # Hugo config redirect
├── config/_default/            # Configuration files
│   ├── config.toml             # Main Hugo config
│   ├── params.toml             # Theme parameters
│   ├── menus.toml              # Navigation menus
│   └── languages.toml          # Language settings
│
├── content/                    # All your content (Markdown)
│   ├── authors/                # Author profiles
│   ├── experience/             # Work experience
│   ├── project/                # Projects/portfolio
│   ├── publication/            # Research publications
│   ├── skills/                 # Skills sections
│   ├── courses/                # Courses/education
│   ├── home/                   # Homepage widgets
│   ├── update/                 # Life updates
│   ├── talk/                   # Conference talks
│   ├── slides/                 # Presentation slides
│   └── professional_courses/   # Professional training
│
├── layouts/                    # Custom page templates
│   ├── partials/               # Reusable components
│   └── _default/               # Default layouts
│
├── assets/                     # Source assets
│   ├── scss/                   # SCSS stylesheets
│   ├── js/                     # JavaScript
│   └── images/                 # Images
│
├── static/                     # Static files (copied as-is)
│   ├── media/                  # Images, PDFs, logos
│   └── files/                  # Downloadables
│
├── data/                       # Data files (YAML/TOML)
│   ├── themes/                 # Color schemes
│   ├── fonts/                  # Font configurations
│   └── page_sharer.toml        # Share button config
│
├── docs/                       # Documentation
│   ├── HUGO_SETUP_WSL.md      # Setup guide
│   ├── CLEANUP_PLAN.md        # Cleanup documentation
│   ├── HUGO_FRAMEWORK.md      # This file
│   └── scripts/                # Utility scripts
│
├── go.mod, go.sum             # Hugo modules (dependencies)
├── netlify.toml               # Netlify deployment config
├── README.md                  # Project documentation
├── CHANGELOG.md               # Version history
└── .gitignore                 # Files to ignore in Git
```

### Generated Directories (Not Tracked)

```
public/                        # Final static website (output)
resources/                     # Hugo cache (SCSS, images)
```

---

## Configuration

### `config.toml` (Root)

Compatibility file for older Hugo projects. Points to actual config:

```toml
# This file is for Blogdown/Forestry compatibility
# Actual config is in config/_default/
```

### `config/_default/config.toml` (Main)

**Hugo Settings:**

```toml
# Site metadata
title = "Udit Asopa"
baseurl = "https://udit-asopa.github.io/"
copyright = "{year}"

# Content processing
summaryLength = 30
enableEmoji = true
enableRobotsTXT = true

# Git info (shows last modified date)
enableGitInfo = true

# Language settings
defaultContentLanguage = "en"
defaultContentLanguageInSubdir = false
```

### `config/_default/params.toml` (Theme)

**Wowchemy Theme Settings:**

```toml
# Site appearance
theme = "udit_asopa"                 # Color scheme
day_night = true                     # Dark mode toggle
font = "rose"                        # Font choice

# Author info
[email_form]
provider = "netlify"

# Analytics
[marketing]
google_analytics_id = ""             # Optional tracking

# Contact methods
[contact]
email = "udit.asopa@gmail.com"
phone = "+358-403515447"
address = "Espoo, Finland"
```

### `config/_default/menus.toml` (Navigation)

**Top Navigation Menu:**

```toml
[[main]]
  name = "Home"
  url = "/"
  weight = 10

[[main]]
  name = "CV"
  url = "media/UditAsopa_CV.pdf"
  weight = 20

[[main]]
  name = "Contact"
  url = "/#contact"
  weight = 30
```

---

## Content Organization

### How Content Maps to URLs

```
content/                        →    Website Structure

content/authors/admin/          →    /authors/admin/
content/experience/brockmann/   →    /experience/brockmann/
content/project/iceye_wildfire/ →    /project/iceye-wildfire/
content/publication/2022_SJST/  →    /publication/2022-sjst/
```

### Homepage Content

Special: `content/home/` contains **widgets** that display on homepage.

Each `.md` file is a widget:
```
content/home/
├── about.md              → About section (active: true)
├── skills.md             → Skills display (active: true)
├── courses.md            → Courses section (active: true)
├── projects.md           → Projects portfolio (active: true)
├── publications.md       → Publications (implicit)
├── work_experience.md    → Experience (implicit)
└── demo.md               → Demo (active: false - hidden)
```

**Widget Control:**
```yaml
---
widget: portfolio                    # Widget type
active: true                         # Show/hide
weight: 5                            # Display order
---
```

---

## Themes & Layouts

### Wowchemy Theme

**What Wowchemy Provides:**

1. **Pre-built Widgets:**
   - About section
   - Experience (CV)
   - Portfolio (projects)
   - Publications
   - Skills
   - Contact form
   - Blog/timeline

2. **Responsive Design:**
   - Mobile-friendly
   - Dark mode
   - Multiple color schemes

3. **SEO Optimization:**
   - Meta tags
   - Structured data
   - Sitemap generation

### Theme Inheritance

Hugo applies templates in this order (first match wins):

```
1. Project layouts (layouts/)        ← Custom overrides
2. Theme layouts (Wowchemy)          ← Theme defaults
3. Hugo default layouts              ← Fallback
```

### Custom Layouts

To customize a layout, create matching file in `layouts/`:

```
# Override theme layout:
layouts/project/single.html          # Custom project page
layouts/publication/single.html      # Custom publication page
```

---

## Asset Processing

### SCSS/SASS Compilation

Wowchemy uses SCSS for styling.

**Why Hugo Extended Required:**

Hugo extended version can compile SCSS → CSS (requires extra dependencies).

**Process:**
```
assets/scss/
    ↓
[Hugo SCSS Compiler]
    ↓
resources/_gen/assets/scss/
    ↓
static/ (final CSS)
```

**Configuration:**
```toml
# In config/_default/config.toml
[module.imports]
[[module.imports.mounts]]
  source = "content"
  target = "content"

# Wowchemy handles SCSS compilation
```

---

### Image Processing

Hugo can optimize and resize images automatically.

**Supported in Markdown:**
```markdown
![Alt text](image.jpg)
![Alt text](image.jpg?width=400px)     # Resize to 400px
```

**Processed in:** `resources/_gen/images/`

---

### Static Files

Files in `static/` copied directly to `public/` root.

```
static/media/
├── UditAsopa_CV.pdf          →    /media/UditAsopa_CV.pdf
├── avatar.png                →    /media/avatar.png
└── brockmann_geom_logo.png   →    /media/brockmann_geom_logo.png
```

---

## Build Process

### `hugo` Command

Builds the static site once:

```bash
hugo
# Generates: public/
# Scans: content/, processes everything
# Output: Complete static website
```

**Output Stats:**
```
Built in 11274 ms
                   | EN   
-------------------+------
  Pages            | 736  
  Paginator pages  |  35  
  Non-page files   |  42  
  Static files     |  10  
  Processed images |  49  
  Aliases          | 342  
```

**What This Means:**
- **Pages:** Individual content pages (736)
- **Paginator pages:** Listing pages with pagination (35)
- **Non-page files:** Partials, data files (42)
- **Static files:** Copied from static/ (10)
- **Processed images:** Optimized images (49)
- **Aliases:** Redirect URLs (342)

---

### `hugo server` Command

Runs development server with hot-reload:

```bash
hugo server --disableFastRender --printI18nWarnings
```

**Features:**
- Live reload on file changes
- Serves on `http://localhost:1313/`
- Press Ctrl+C to stop

**Why `--disableFastRender`:**
- Ensures full rebuilds
- Prevents caching issues during development
- Slower but more reliable

---

## Development Workflow

### Typical Day-to-Day

```
1. Start development server
   bash ./view.sh              # Starts hugo server

2. Create/edit content
   vim content/project/my-project/index.md

3. Hugo detects change
   → Rebuilds affected pages
   → Browser refreshes (if LiveReload enabled)

4. Review in browser
   http://localhost:1313

5. Commit changes
   git add .
   git commit -m "Add new project"

6. Push to GitHub
   git push origin main
   → Netlify auto-deploys
```

### Creating New Content

**Via Hugo CLI:**
```bash
hugo new project/my-new-project/index.md
# Creates: content/project/my-new-project/index.md
# With: YAML frontmatter template
```

**Manual Creation:**
```bash
mkdir -p content/project/my-project
cat > content/project/my-project/index.md << 'EOF'
---
title: "My Project Title"
date: 2024-05-10
draft: false
---

Project content here...
EOF
```

---

## Deployment

### Static Site Advantage

Once `public/` is generated, it can be deployed anywhere:

```
public/                           (Static website)
   ↓
GitHub Pages, Netlify, Vercel, S3, FTP, etc.
```

### Netlify (Current Setup)

**Config:** `netlify.toml`

```toml
[build]
command = "hugo"
publish = "public"

[build.environment]
HUGO_VERSION = "0.123.7"
```

**Auto-Deployment Flow:**
```
1. Push to GitHub
   git push

2. Netlify webhook triggered
   → Clones repository
   → Runs: hugo
   → Generates: public/
   → Deploys to CDN

3. Live update (minutes)
   https://uditasopa.netlify.app
```

---

## Performance Tips

### 1. Content Organization

✅ **Do:**
- Organize by meaningful sections
- Use consistent naming
- Group related content

❌ **Don't:**
- Create overly nested structures
- Use special characters in filenames
- Mix content types in same folder

### 2. Image Optimization

✅ **Do:**
- Use appropriately sized images
- Compress before uploading
- Use modern formats (WebP)

❌ **Don't:**
- Upload 8MB images
- Use dozens of full-resolution photos
- Mix image formats

### 3. Build Performance

The build time depends on:
- Number of pages (736 pages = ~11s)
- Image processing
- SCSS compilation
- Asset optimization

**To speed up:**
```bash
# Fast render during development
hugo server --disableFastRender

# Full build (once per day)
hugo

# Check build time
hugo --printMemoryUsage
```

---

## Troubleshooting

### Problem: Pages Not Appearing

**Solutions:**
```yaml
# 1. Check draft status
draft: false          # Must be false to publish

# 2. Check date (future dates = not published by default)
date: 2024-01-15      # Should be past date

# 3. Check file location
# Must be in content/ directory

# 4. Hugo needs `_index.md` for sections
content/project/
  └── _index.md       # Section overview (optional)
```

### Problem: Theme Not Loading

**Solutions:**
```bash
# 1. Initialize modules
hugo mod get -u

# 2. Check config.toml for module imports
# Should have Wowchemy module reference

# 3. Verify Hugo extended version
hugo version
# Should show: hugo v0.123.7+extended
```

### Problem: SCSS Not Compiling

**Solutions:**
```bash
# Must use Hugo extended
hugo version | grep extended

# If not extended, reinstall:
# Download from: https://github.com/gohugoio/hugo/releases
# Look for: hugo_extended_*
```

### Problem: Images Not Showing

**Solutions:**
```
# Check image paths:
1. Static files: /media/image.png (in static/)
2. Content files: ![](image.png) (same folder)
3. Absolute URLs: /media/image.png

# Verify in public/ directory
ls public/media/
```

---

## Resources

### Official Documentation
- **Hugo Docs:** https://gohugo.io/documentation/
- **Hugo Getting Started:** https://gohugo.io/getting-started/
- **Hugo Content Management:** https://gohugo.io/content-management/

### Wowchemy
- **Wowchemy Docs:** https://wowchemy.com/docs/
- **Wowchemy Widgets:** https://wowchemy.com/docs/page-builder/
- **GitHub:** https://github.com/wowchemy/wowchemy-hugo-modules

### Community
- **Hugo Community:** https://discourse.gohugo.io/
- **Wowchemy Forum:** https://github.com/wowchemy/wowchemy-hugo-modules/discussions

### Related Setup Guides
- **WSL Setup:** See [HUGO_SETUP_WSL.md](HUGO_SETUP_WSL.md)
- **Local Development:** See [README.md](../README.md)

---

## Quick Reference

### Common Commands

```bash
# Start development server
hugo server --disableFastRender --printI18nWarnings

# Build once
hugo

# Create new content
hugo new section/my-content/index.md

# Clean build (remove artifacts)
rm -rf resources/ public/
hugo

# Check Hugo version
hugo version

# Check module status
hugo mod get -u
hugo mod graph
```

### File Locations

| Need | Location |
|------|----------|
| **Edit content** | `content/` |
| **Change site title** | `config/_default/config.toml` |
| **Change theme** | `config/_default/params.toml` |
| **Edit navigation menu** | `config/_default/menus.toml` |
| **Add image/PDF** | `static/media/` |
| **Custom CSS** | `assets/scss/` |
| **Custom templates** | `layouts/` |

---

**Happy Building! 🚀**

For questions about this framework guide, refer to the official Hugo documentation or Wowchemy documentation linked above.
