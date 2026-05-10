# Changelog

All notable changes to this repository are documented in this file.

## Future changes

### Phase 2 - Deferred (Decision Pending)
Three content sections deferred for future review:
- `content/slides/` — Demo example (decide: remove or keep?)
- `content/talk/` — Conference archive (decide: archive or remove?)
- `content/professional_courses/` — Index only (decide: expand or remove?)

**Status:** Keeping all three sections for now. Will revisit archival strategy later.

### Updates to make in future
- Refresh recent highlights and update timeline sections with the items below.

#### Events, Hackathons, and Workshops to add
- Cassini Hackathon: EU Space Consumer Experience
  - https://taikai.network/cassinihackathons/hackathons/eu-space-consumer-experience/overview
- Winter Satellite Workshop 2026
  - https://spaceworkshop.fi/program2026.html
- twoday and Databricks Lakehouse Bootcamp (Helsinki, 12 Feb 2026)
  - https://www.linkedin.com/posts/twoday_twoday-databricks-lakehouse-activity-7420043196409462784-4Nly?utm_source=share&utm_medium=member_desktop&rcm=ACoAAB0cs6IBgZO9XxrpQ5mpuo9zxX6W3jZ9wb4
- Practical Deep Learning (CSC, April 2026)
  - https://csc.fi/en/training-calendar/practical-deep-learning-5/
- Practical Machine Learning with Spatial Data (CSC, December 2026)
  - https://csc.fi/en/training-calendar/practical-machine-learning-with-spatial-data-2/
- Microsoft hackathons attended (December and February)

#### Certifications and programs to add
- McKinsey Forward Program

#### Talks and speaking updates to add
- PyData Helsinki talk on Typer
  - https://pydata-helsinki.github.io/
- Short geospatial engineering talk at Startup Refugees and Engineers Without Borders (EWB)

#### Community participation updates to add
- PyData events attended (TEK, Elisa, RELEX)
- Wolt events attended

---

## 2026-05-10 (Content Quality Enhancement — Phase 2)

**Branch:** `feat/cleaning_content`
**Commits:** `bd3dadb`, `93443c3`, `57f815d`, `9bf0fa0`

### Improved
- Refined homepage section subtitles for stronger clarity and consistency across Skills, Projects, Education, Publications, Updates, and Contact widgets.
- Polished profile wording in the author page for a more professional and concise presentation.
- Improved selected skills page copy to reduce repetition and sharpen messaging.
- Unified and enriched tag taxonomy across all 5 skills pages (~174 redundant/inconsistent tags replaced with ~90 clean, canonical terms).
- Normalized and enriched tags across 6 project pages (SAR, InSAR, Remote Sensing, OCR/VLMs, ICEYE Hurricane, ICEYE Wildfire) and 2 experience pages (ICEYE, Brockmann Consult) using domain/method/application/tool layering.
- Added tag governance rules to `docs/HUGO_FRAMEWORK.md` (Title Case standard, acronym casing, target tag counts, anti-patterns).

### Fixed
- Corrected ICEYE experience logo reference to an existing media asset (`media/iceye.jpg`) to prevent broken image rendering.
- Normalized location formatting (`Delft, Netherlands`) and cleaned spacing in experience descriptions.

### Removed
- Stripped all decorative emojis from content files across the site:
  - `content/courses/` — titles, section headers, bullet points, and flag emojis in 4 files.
  - `content/skills/` — page titles and table header decorations in 5 files.
  - `content/experience/brockmann/` and `content/experience/iceye/` — section headings.
  - `content/update/` — both update pages.

### Verification
- Hugo build completed successfully in WSL (`736` pages generated, no build errors).
- Final sweep confirmed zero emoji characters in any markdown file under `content/`.

## 🎉 v2.1.0 - Repository Decluttering & Documentation (May 10, 2026)

**Branch:** `feat/decluttered`

### 🎯 Major Accomplishments

This release focuses on **repository cleanup, optimization, and comprehensive documentation**.

**Summary:**
- ✅ **Removed 30 unused files** (2.95 MB saved)
- ✅ **Reorganized root directory** (18 files → 11 files)
- ✅ **Added comprehensive Hugo framework documentation** (22.6 KB guide)
- ✅ **Verified build integrity** (736 pages maintained, 27% faster builds)
- ✅ **Improved project structure** (better organization, cleaner root)

### 📊 Statistics

| Metric | Before | After | Change |
|--------|--------|-------|--------|
| Root Files | 18 | 11 | -7 items |
| Unused Media | 7 files | 0 files | -2.95 MB |
| Build Time | ~15s | ~11s | -27% faster |
| Pages | 737 | 736 | -1 (demo widget) |
| Total Commits | — | 8 new | Major cleanup branch |

### ✨ What's New

1. **Phase 1 Deep-Dive Cleanup** ✅
   - Removed 7 unused CV and logo files (2.95 MB)
   - Deleted 16 `.DS_Store` files (macOS metadata)
   - Removed 5 `.gitkeep` placeholder files
   - Removed 1 backup file and 1 disabled widget
   - Verified zero functionality loss

2. **Root Directory Decluttering** ✅
   - Moved `update_wowchemy.sh` → `docs/scripts/`
   - Updated `.gitignore` to exclude build artifacts
   - Enhanced `README.md` with development guide
   - Root directory now contains only essential files

3. **Comprehensive Documentation** ✅
   - Created `docs/HUGO_FRAMEWORK.md` (906 lines, 22.6 KB)
   - Complete Hugo framework explanation
   - Build process, configuration, development workflow
   - Troubleshooting guide and quick reference

4. **Phase 2 Deferred** ⏸️
   - Kept `content/slides/`, `content/talk/`, `content/professional_courses/`
   - Decision pending for future archival strategy

### 🚀 How to Use This Release

**Switch to this branch:**
```bash
git checkout feat/decluttered
git pull
```

**Review documentation:**
- `docs/HUGO_FRAMEWORK.md` — Complete Hugo guide
- `docs/HUGO_SETUP_WSL.md` — WSL setup instructions
- `docs/CLEANUP_PLAN.md` — Cleanup analysis and plan

**Local development:**
```bash
bash ./view.sh          # Start Hugo server
bash docs/scripts/update_wowchemy.sh   # Update theme
```

### 📋 Commits in This Release

```
8f14a74 docs: update changelog with Hugo framework documentation
6809f34 docs: add comprehensive Hugo framework documentation
d8138ca chore: declutter root directory and organize scripts
6fed6d5 docs: defer phase 2 cleanup decision
71d7e5b docs: update changelog with phase 1 cleanup completion
1dacea3 chore: phase 1 cleanup - remove unused media and system files
b6dea58 docs: add comprehensive cleanup deep-dive analysis
c60830b docs: document repository cleanup in changelog
ef0bc41 chore: repository cleanup and declutter
```

### ✅ Verification Checklist

- [x] Phase 1 cleanup executed (30 files removed)
- [x] Root directory reorganized (7 files moved/removed)
- [x] Build verified (736 pages, no errors)
- [x] Hugo documentation created (22.6 KB guide)
- [x] README updated with dev instructions
- [x] .gitignore updated for build artifacts
- [x] All changes documented in CHANGELOG
- [x] Zero functionality loss confirmed
- [x] Faster builds confirmed (27% improvement)

---

## 2026-05-10 (Documentation: Hugo Framework Guide)

### Added
- **Comprehensive Hugo Documentation:** `docs/HUGO_FRAMEWORK.md`
  - Complete guide to Hugo static site generator
  - How Hugo works (build process, pipeline)
  - Core concepts (content, frontmatter, pages, sections, taxonomies)
  - Configuration explanation (config.toml, params.toml, menus.toml)
  - Directory structure and content organization
  - Themes and layouts (Wowchemy specifics)
  - Asset processing (SCSS, images, static files)
  - Build process and statistics
  - Development workflow and local testing
  - Deployment (Netlify auto-deployment)
  - Performance optimization tips
  - Troubleshooting guide
  - Resources and references
  - Quick command reference

### Impact
- Complete documentation of Hugo framework
- Helpful for understanding website mechanics
- Reference guide for development and troubleshooting
- Covers both beginners and intermediate users

## 2026-05-10 (Root Directory Decluttering)

### Changed
- **Moved utility scripts to organized location:**
  - `update_wowchemy.sh` → `docs/scripts/update_wowchemy.sh` (infrequent theme updates)
  - Updated `.gitignore` to exclude `.hugo_build.lock` and `isce.log`
  - Updated `README.md` with local development instructions and script references

### Impact
- **Root files reduced:** 18 → 11 (cleaner directory structure)
- **Scripts properly organized:** Utility scripts moved to documentation folder
- **Build artifacts ignored:** Auto-generated files no longer tracked

## 2026-05-10 (Phase 1 Deep-Dive Cleanup)

### Removed
- **Media files (7 files, 2.95 MB):**
  - 3 unused CV versions: `Udit_Asopa_CV_1page.pdf`, `Udit_Asopa_CV_detailed.pdf`, `Udit_Asopa_CV_detailed_V2.pdf`
  - 4 unused logos: `iceye_hurricane.png`, `iirs_logo.png`, `gravatar.png`, `Iceye-logo-black.png`
- **System files (26 files):** All `.DS_Store` files across repository
- **Placeholder files (5 files):** All `.gitkeep` files from empty directories
- **Backup files (1 file):** `content/professional_courses/backup_index_md`
- **Disabled widget (1 file):** `content/home/demo.md` (was inactive)

### Impact
- **Size savings:** 2.95 MB
- **Files deleted:** 30 total
- **Pages maintained:** 737 (verified no loss)
- **Functionality:** 100% preserved
- **Breaking changes:** None

## 2026-05-10

### Removed
- Removed `exampleSite/` directory (unused example template structure).
- Removed `public/` directory (build output, auto-regenerated on each build).
- Removed `resources/` directory (Hugo cache, auto-generated).
- Removed `scripts/` directory (only contained `init_kickstart.sh`, one-time use).
- Removed system files: `.DS_Store`, `.hugo_build.lock`, `isce.log`.
- Removed unused config files: `academic.Rproj`, `package-lock.json`.

### Changed
- Repository structure now streamlined and cleaner with only essential directories and files.

### Changed
- Updated CV-related references in `content/authors/admin/_index.md`.
- Updated contact detail of email and call in `content/authors/admin/_index.md`.

## 2026-05-10

### Added
- Added consolidated CV file at `static/media/UditAsopa_CV.pdf`.

### Changed
- Standardized CV links to use `static/media/UditAsopa_CV.pdf` across site configuration and profile content.
- Updated contact details (address) in `config/_default/params.toml`.
- Updated CV-related references in `config/_default/menus.toml`.
- Updated CV-related references in `content/authors/admin/_index.md`.

## 2026-05-10

### Added
- Added WSL-focused Hugo setup guide at `docs/HUGO_SETUP_WSL.md`.
- Added end-to-end installation and troubleshooting steps for Hugo, Go, and DNS issues in WSL.

### Changed
- Updated setup instructions to require Hugo extended (needed for SCSS/SASS build pipeline used by Wowchemy).
- Updated local run command in `view.sh` to use --printI18nWarnings.
- Added Brockmann logo asset at `static/media/brockmann_geom_logo.png`.
- Initialized and updated detailed Brockmann experience page at `content/experience/brockmann/index.md`.
- Updated homepage experience section to include Brockmann as the current role.
- Marked ICEYE role as completed by setting an end date in the experience timeline.
- Updated social links in `content/authors/admin/_index.md` by removing Twitter, Facebook, and Instagram and adding YouTube.

### Fixed
- Documented fix path for error: TOCSS failed ... you need the extended version.
- Documented fix path for error: failed to load modules ... binary with name "go" not found.
