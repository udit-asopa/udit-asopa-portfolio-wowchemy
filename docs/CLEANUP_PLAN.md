# Repository Cleanup & Optimization Plan

**Date:** May 10, 2026  
**Current Build Stats:** 737 pages, 343 aliases, ~188 MB active content  
**Goal:** Remove unused files while maintaining 100% functionality

---

## 📊 Audit Findings

### Active vs Inactive Content Sections

| Section | Files | Status | Homepage Widget | Action |
|---------|-------|--------|-----------------|--------|
| authors | 6 | Active | Yes (about) | ✅ KEEP |
| courses | 20 | Active | Yes (courses) | ✅ KEEP |
| experience | 3 | Active | Yes (work_experience) | ✅ KEEP |
| home | 11 | Active | — | ✅ KEEP |
| projects | 18 | Active | Yes (projects) | ✅ KEEP |
| publications | 17 | Active | Yes (publications) | ✅ KEEP |
| skills | 13 | Active | Yes (skills) | ✅ KEEP |
| update | 6 | Active | Yes (update) | ✅ KEEP |
| **professional_courses** | 2 | Minor | No widget | ⚠️ REVIEW |
| **talk** | 4 | Minor | No widget | ⚠️ REVIEW |
| **slides** | 1 | Example | No widget | ❌ REMOVE |

**Homepage Widgets Inventory:**
- ✅ about.md (active: true)
- ✅ courses.md (active: true)
- ✅ contact.md (implicit default)
- ✅ education.md (implicit default)
- ✅ publications.md (implicit default)
- ✅ projects.md (active: true)
- ✅ skills.md (active: true)
- ✅ update.md (active: true)
- ✅ work_experience.md (implicit default)
- ❌ demo.md (active: **false** - disabled, safe to remove)

---

## 🗑️ TIER 1: Safe to Remove (Verified Unused)

### Media Files - Unused Logos/Images
**Current:** `static/media/` contains 17 files  
**Safe to Remove (0 references):**
- `gravatar.png` — No references found
- `Iceye-logo-black.png` — No references found
- `iceye_hurricane.png` — No references found
- `iirs_logo.png` — No references found
- `Udit_Asopa_CV_1page.pdf` — Unused CV version
- `Udit_Asopa_CV_detailed.pdf` — Unused CV version
- `Udit_Asopa_CV_detailed_V2.pdf` — Unused CV version

**Keep (actively referenced):**
- ✅ `UditAsopa_CV.pdf` (referenced in 2 places)
- ✅ `iceye.jpg` (3 references)
- ✅ `brockmann_geom_logo.png` (1 reference)
- ✅ `avatar.png`, `tudelft_logo.png`, `csre_logo.png`, etc.

**Estimated Savings:** ~5-8 MB

### System Files
- `.DS_Store` (static/media/)
- `.DS_Store` (assets/)
- `.DS_Store` (content/talk/)
- `.gitkeep` (static/media/)
- `.gitkeep` (data/fonts/)
- `.gitkeep` (assets/images/icon-pack/)

**Estimated Savings:** <1 MB

### Disabled Widgets
- `content/home/demo.md` — Explicitly disabled (active: false)

**Estimated Savings:** <1 MB

---

## 🟡 TIER 2: Candidates for Removal (Minimal Active Use)

### Unused Content Directories

**1. `content/slides/`** (1 file)
- Contains: `example/` (demo slide only)
- No references in homepage
- Not displayed on website
- **Recommendation:** ❌ **REMOVE** — Pure demo content
- **Savings:** <1 MB

**2. `content/professional_courses/`** (2 files)
- Contains: `_index.md` + `backup_index_md`
- `backup_index_md` is clearly a backup file
- No widget displays this section
- **Recommendation:** ⚠️ **REVIEW FIRST**
  - Check if you plan to display professional courses
  - If not displaying, remove entire directory
  - If keeping, definitely remove `backup_index_md`
- **Savings:** <1 MB

**3. `content/talk/`** (4 files, .DS_Store included)
- Contains: `_index.md` + `AGU2021/`
- No widget references talks on homepage
- Not displayed on website
- **Recommendation:** ⚠️ **REVIEW FIRST**
  - Might be portfolio archive/history
  - Consider moving to `docs/` if keeping for posterity
  - Otherwise safe to remove
- **Savings:** <1 MB

### Config Files - Optional Cleanup

**1. `theme.toml`** (1.3 KB)
- Purpose: Metadata for theme distribution (only needed if distributing theme)
- Status: Not used for your personal website
- **Recommendation:** ⚠️ **SAFE TO REMOVE**
  - Only used if you plan to distribute this as a theme
  - Keep if you might share your setup later
- **Savings:** <1 MB

**2. `.editorconfig`** (318 B)
- Purpose: Editor formatting rules
- Status: Useful for collaboration but optional
- **Recommendation:** ✅ **KEEP** (minimal size, good for consistency)

**3. `data/page_sharer.toml`** (500+ B)
- Purpose: Social media sharing buttons on pages
- Status: Wowchemy feature (configurable)
- **Recommendation:** ✅ **KEEP** (adds sharing functionality)

**4. `data/fonts/` (.gitkeep only)**
- Status: Empty, just placeholder
- **Recommendation:** ❌ **REMOVE .gitkeep** (folder can stay empty)

**5. `data/themes/` (6 theme files)**
- Contains: burgundy.toml, charcoal_blue.toml, earth_science_dark.toml, professional_dark.toml, udit_asopa.toml, udit_asopa_light.toml
- Status: Alternative color themes
- Currently Active: Configured in `config/_default/params.toml`
- **Recommendation:** ✅ **KEEP** (low cost, adds customization)

---

## 🔵 TIER 3: Complex/Keep-as-Is

### Directories to Keep
- ✅ `config/_default/` — Essential site configuration
- ✅ `assets/` — Site assets (jsconfig.json, images/icon.png)
- ✅ `layouts/partials/marketing/` — Custom analytics tracking
- ✅ `docs/` — Documentation (your setup guides)
- ✅ `static/` — All other media files

### Files to Keep
- ✅ `view.sh` — Your convenience script for local development
- ✅ `update_wowchemy.sh` — Theme update utility
- ✅ `go.mod`, `go.sum` — Hugo modules dependencies (required)
- ✅ `CHANGELOG.md` — Version history
- ✅ `.editorconfig` — Code formatting standards
- ✅ `netlify.toml` — Netlify deployment config

---

## 📋 Recommended Cleanup Sequence

### Phase 1: Immediate Safe Removals (No Risk)
**Size Savings: ~8 MB | Risk Level: ✅ None**

```bash
# System files (always safe)
rm static/media/.DS_Store
rm static/media/.gitkeep
rm assets/.DS_Store
rm data/fonts/.gitkeep
rm -rf assets/images/icon-pack/.gitkeep

# Unused CV versions
rm static/media/Udit_Asopa_CV_1page.pdf
rm static/media/Udit_Asopa_CV_detailed.pdf
rm static/media/Udit_Asopa_CV_detailed_V2.pdf

# Unused logos
rm static/media/gravatar.png
rm static/media/Iceye-logo-black.png
rm static/media/iceye_hurricane.png
rm static/media/iirs_logo.png

# Disabled widget
rm content/home/demo.md

# Backup files
rm content/professional_courses/backup_index_md

# Demo content
rm -rf content/slides/
```

### Phase 2: Review & Remove (User Decision)
**Size Savings: ~1-2 MB | Risk Level: ⚠️ Requires Decision**

**Option A: Remove Unused Sections**
```bash
# If not displaying professional courses or talks:
rm -rf content/professional_courses/
rm -rf content/talk/
```

**Option B: Keep as Archive**
- Keep in `content/` if it's portfolio history
- Or move to separate `archive/` folder
- Or add to `.gitignore` if purely for reference

### Phase 3: Optional Config Cleanup
**Size Savings: <1 MB | Risk Level: 🟢 Very Low**

```bash
# Only if you won't distribute theme
rm theme.toml
```

---

## 📈 Cleanup Impact Analysis

### Before Cleanup
- Root files: 20 items
- Total active content: 737 pages
- Repository size: ~188 MB (excluding .git)

### After Phase 1
- Root files: 20 items (unchanged)
- Total pages: **737 pages** (unchanged - no content removal)
- Size saved: **~8 MB**
- Functionality: **100% maintained** ✅

### After Phase 2 (optional)
- Size saved: **+1-2 MB**
- Pages: **734-735 pages** (if removing talks/professional_courses)
- Functionality: **100% maintained** ✅

### After Phase 3 (optional)
- Size saved: **+<1 MB**
- Impact: Negligible

---

## ✅ Validation Checklist

Before executing cleanup:

- [ ] User confirms Phase 1 removals are safe
- [ ] User reviews Phase 2 decisions (talks, professional_courses)
- [ ] User decides on theme.toml retention
- [ ] Current hugo server builds successfully
- [ ] All homepage widgets render correctly
- [ ] Git status is clean (no uncommitted changes)

After cleanup execution:

- [ ] `hugo server` builds with same page count (737 pages)
- [ ] All homepage sections render
- [ ] No broken image links
- [ ] CV download link works
- [ ] All nav menu links functional
- [ ] Build time is consistent
- [ ] Changes committed with clear message

---

## 🎯 Summary

**Phase 1 (Recommended - Execute Now):** ~8 MB savings, zero risk
**Phase 2 (Optional - Your Choice):** ~1-2 MB, minimal risk if sections unused
**Phase 3 (Optional):** <1 MB, no real impact

**Total Possible Savings:** ~9-11 MB from repository  
**Risk to Functionality:** None if following recommendations  
**Effort:** ~5 minutes for Phase 1, ~10 minutes for Phase 2+3

---

**Next Steps:**
1. Review this plan
2. Confirm which phases to execute
3. Run cleanup commands
4. Verify build output
5. Commit changes with changelog entry
