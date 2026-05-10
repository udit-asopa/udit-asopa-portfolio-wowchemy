# Changelog

All notable changes to this repository are documented in this file.

## Future changes

### Phase 2 - Deferred (Decision Pending)
Three content sections deferred for future review:
- `content/slides/` — Demo example (decide: remove or keep?)
- `content/talk/` — Conference archive (decide: archive or remove?)
- `content/professional_courses/` — Index only (decide: expand or remove?)

**Status:** Keeping all three sections for now. Will revisit archival strategy later.

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

## 2026-05-10 (Continued)

### Update
- update the recent section
- update the `updates` section properly
- update the certificate/courses section with new achievements

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
