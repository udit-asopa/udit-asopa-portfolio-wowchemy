# Changelog

All notable changes to this repository are documented in this file.

## Future changes

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
