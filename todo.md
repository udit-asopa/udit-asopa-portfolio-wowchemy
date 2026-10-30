# Portfolio Website Build Plan

## Phase 1: Architecture & Setup
- [x] Decide tech stack (Next.js 15 + TypeScript + Tailwind CSS + Shadcn/ui)
- [ ] Create project structure (app router, components, types, config)
- [ ] Set up package.json and dependencies
- [x] Initialize git repo (already done per user)
- [ ] Create environment config template
- [x] Rename project folder from `uditasopa/` to `udit-asopa/`
- [x] Copy CV asset from Hugo source to `udit-asopa/public/cv/UditAsopa_CV.pdf`

## Phase 2: Core Layout & Navigation
- [ ] Navbar component (sticky, responsive, dark mode toggle)
- [ ] Add development-only palette selector switch near dark/light toggle
- [ ] Hero/Home section (eye-catching intro, CTA buttons)
- [ ] Add "Download CV" button on hero and/or navbar
- [ ] Footer with social links
- [ ] Responsive mobile-first design
- [ ] Dark/Light mode toggle functionality

## Phase 3: Content Sections
- [ ] About section (background, expertise, achievements)
- [ ] Projects showcase (6+ live projects with images/descriptions/links)
- [ ] Skills/Expertise section (organized by domain)
- [ ] Experience timeline (work, research, publications)
- [ ] Testimonials/Reviews section
- [ ] Blog/Updates (if applicable)

## Phase 4: Contact & Engagement
- [ ] Contact form (email integration ready)
- [ ] Email CTA buttons
- [ ] Social media links
- [ ] Calendar booking integration (optional)
- [ ] Newsletter signup (optional)

## Phase 5: Polish & Performance
- [ ] Image optimization
- [ ] SEO meta tags
- [ ] Accessibility audit (a11y)
- [ ] Performance testing (Lighthouse)
- [ ] Mobile responsiveness verification
- [ ] Lock final light/dark palette for production and remove dev palette switch

## Phase 6: Deployment & Monitoring
- [ ] Vercel deployment setup
- [ ] Domain configuration
- [ ] Analytics integration (optional)
- [ ] Monitoring and logging

---

## Key Decisions (Awaiting Confirmation)

**Tech Stack:**
- Next.js 15 (App Router) + TypeScript + Tailwind CSS + Shadcn/ui
- Rationale: Modern, performant, component-rich, Vercel-native

**Content Model:**
- Static content in config files (projects, skills, experience)
- CMS-ready structure (easy to migrate to Sanity/Contentful later if needed)

**Design Inspiration:**
- anshuman-jha.vercel.app (clean, visual, service-oriented)
- Your geospatial/data science expertise blend

**Deployment:**
- Vercel (free tier available, auto-deploys from git)
- Custom domain ready

---

## Content Model (Extracted from Root Folder)

**Background**: Geospatial Data Scientist and Remote Sensing Engineer with strong EO/SAR domain depth across research and production delivery. AI/ML engineering is a newer focus area in my profile, with concentrated hands-on expansion starting in 2025. Domain expert with a jack-of-all-trades execution style (Python, geospatial pipelines, disaster response analytics, scientific software).

**Work History**:
- Brockmann Geomatics Sweden AB (Jan 2026 - Present) — Data Scientist, Espoo, Finland
- ICEYE Oy (Dec 2021 - Jan 2026) — SAR Remote Sensing Engineer, Espoo, Finland
- Delft University of Technology (Apr 2020 - Apr 2021) — Remote Sensing and GIS Researcher, Delft, Netherlands
- Indian Institute of Technology Bombay (Sep 2019 - Feb 2020) — Jr. Remote Sensing and GIS Researcher, Bombay, India

**Top Projects** (from root):
1. Hurricane/Wildfire Damage Detection (ICEYE) — Production disaster products
2. InSAR Ground Deformation Monitoring — Research + ops
3. Remote Sensing Suite (GEE apps, urban heat, volcanic deformation)
4. Vision Text Extractor — Recent AI/VLM work
5. 7 peer-reviewed publications in top journals

**Key Strengths**: SAR analytics, Python workflows, ML pipelines, cross-functional leadership, 24-48hr disaster response, reproducible science

**Social**: LinkedIn, GitHub, Google Scholar, YouTube, Twitter

---

## PROPOSED WEBSITE SECTIONS (8 Total)

1. **Hero/Intro** — "Geospatial AI Engineer & Domain Expert" + quick CTA
2. **About** — Background + dual narrative (production + research)
3. **Featured Projects** — 5 major projects with live links, visuals, impact metrics
4. **Experience Timeline** — Work history, roles, key achievements
5. **Core Skills** — Domain skills (SAR, InSAR, GEE) + Technical (Python, ML, tools)
6. **Publications** — 7 peer-reviewed papers with venue/link
7. **Testimonials/Impact** — 3-4 quotes about collaboration + product impact
8. **Contact & CTA** — Email, LinkedIn, GitHub, booking/email form

---

## PROPOSED COLOR PALETTES (3 Options)

**Option 1: "Earth Observation" (RECOMMENDED)**
- Primary: Deep Ocean Blue (#0F4C75)
- Secondary: Bright Cyan (#3282B8)
- Accent: Satellite Orange (#FF6B35)
- Neutral: Clean White (#F7F9FC) / Dark Charcoal (#1A1F2E)
- Rationale: Evokes satellite imagery, Earth observation, tech innovation

**Option 2: "Scientific Authority"**
- Primary: Deep Slate (#2C3E50)
- Secondary: Vibrant Teal (#1ABC9C)
- Accent: Gold (#F39C12)
- Neutral: Off-white (#ECF0F1) / Dark (#263238)
- Rationale: Professional, research-oriented, trusted authority

**Option 3: "Modern Minimalist"**
- Primary: Dark Navy (#1A2332)
- Secondary: Electric Purple (#7B68EE)
- Accent: Lime Green (#39FF14)
- Neutral: Clean White (#FFFFFF) / Mid-gray (#F5F5F5)
- Rationale: Contemporary, tech-forward, edgy appeal

**I recommend Option 1** — Deep Ocean Blue + Cyan + Orange matches your geospatial/satellite domain perfectly and stands out visually like the reference site.

---

## TECHNOLOGY STACK (CONFIRMED)

- **Framework**: Next.js 15 (App Router) + TypeScript
- **Styling**: Tailwind CSS + Shadcn/ui (button, card, form components)
- **Dark Mode**: Next.js useTheme + Tailwind dark: mode
- **Deployment**: GitHub Pages (static export) or Netlify (later)
- **Development**: Local npm run dev → GitHub Pages upload

---

## DETAILED CONTENT DATASET (Implementation Source of Truth)

### Identity and Positioning
- Full name: Udit Asopa
- Positioning statement: Geospatial Data Scientist and Scientific Software Engineer with deep SAR/EO domain expertise and end-to-end product delivery experience; AI/ML engineering specialization expanded significantly from 2025 onward.
- Primary narrative for website copy: "Domain expert and jack-of-all-trades" with production impact + research credibility.
- Current location: Espoo, Finland

### Contact and Social Links
- Email: `udit.asopa@gmail.com`
- Phone: `+358-403515447`
- LinkedIn: `https://linkedin.com/in/uditasopa`
- GitHub: `https://github.com/udit-asopa`
- Google Scholar: `https://scholar.google.com/citations?user=pWEISYcAAAAJ&hl=en`
- YouTube: `https://www.youtube.com/@nomadicwhistler`
- WhatsApp: `https://wa.me/+358403515447/`

### Experience Timeline (Detailed)
1. Brockmann Geomatics Sweden AB (Jan 2026 - Present)
	- Role: Data Scientist | Geospatial Data Scientist | Scientific Software Engineer
	- Location: Espoo, Finland
	- Focus: Production Python workflows, environmental and water analytics, scalable EO pipelines
	- Key projects: AQUATIME (ESA SUP), OASIS (Horizon Europe)

2. ICEYE Oy (Dec 2021 - Jan 2026)
	- Role: SAR Remote Sensing Engineer
	- Location: Espoo, Finland
	- Focus: Disaster-response geospatial intelligence products
	- Product contributions: Hurricane Rapid Impact and Wildfire Insights

3. Delft University of Technology (Apr 2020 - Apr 2021)
	- Role: Remote Sensing and GIS Researcher
	- Location: Delft, Netherlands
	- Focus: InSAR time-series analysis, geospatial modeling, cloud-enabled automation, reproducible workflows

4. Indian Institute of Technology Bombay (Sep 2019 - Feb 2020)
	- Role: Jr. Remote Sensing and GIS Researcher
	- Location: Bombay, India
	- Focus: SAR feature extraction, cryosphere-oriented field and satellite data integration

### Featured Projects (Detailed)
1. Vision Text Extractor (2025)
	- Type: Multimodal AI/OCR CLI
	- Stack: Python, SmolVLM, LLaVA, GPT-4o, Pixi
	- Value: Local/privacy-first or cloud inference; document intelligence and batch automation

2. ICEYE Hurricane Solution (2025)
	- Type: Disaster insurance analytics
	- Highlights: 30m SAR-derived damage insight, near real-time delivery, GIS-ready layers

3. ICEYE Wildfire Insights (2023)
	- Type: Building damage intelligence
	- Highlights: Destroyed-vs-undamaged classification, all-weather monitoring, Esri dashboard integration

4. InSAR Applications
	- Highlights: DInSAR + PSInSAR for deformation/subsidence monitoring; Sentinel-1/TerraSAR-X workflows
	- Repos: pygmtsar, EZ-InSAR, plant-isce3

5. Remote Sensing Applications Suite
	- Includes: UHI (Jaipur), Taal deformation study, cryosphere mapping, LiDAR forest structure, GEE monitoring apps
	- Quantified result: 26.55% urban growth linked to 5°C LST increase (Jaipur)

### Skills Architecture for Site Sections
- Domain skills: SAR, InSAR, EO analytics, geospatial intelligence, climate/environment monitoring
- Engineering skills: Python pipelines, ETL orchestration, raster/vector integration, reproducibility practices
- Product/ops strengths: rapid 24-48h disaster response, cross-functional delivery, stakeholder communication
- Tools: Python ecosystem, QGIS/ArcGIS, GEE, GDAL/Rasterio, SQL, GitHub Actions, Power BI, AWS basics

### Education and Credentials
1. M.Eng. Remote Sensing and GIS - IIRS/ISRO (2017-2019)
2. PG Diploma Biomedical Instrumentation and Health Informatics - CDAC (2016-2017)
3. B.E. Electronics and Communication - RTU (2011-2016)

### Certifications and Events (Priority Items)
- IBM GenAI + RAG certifications (2025)
- BCG X and British Airways data science simulations (2025)
- Tata GenAI Powered Data Analytics (2025)
- Project Management (Politecnico di Milano), Git/GitHub (Google)
- BiDS 2025 and ThinkingEarth Hackathon wins (1st and 2nd place outcomes)
- AGU 2020, AMERSIE 2020, ISPRS 2018

### Publications and Metrics to Highlight
- 7 peer-reviewed publications across SJST, Advances in Space Research, AGU ESS, ISPRS, conference proceedings
- Key metrics:
  - UHI study: +26.55% urban area, +5°C mean LST
  - UAVSAR tomography: RMSE 4.21m, R² 0.92
  - PSInSAR results: measured deformation velocities around -40 to -70 mm/yr

### UI/Content Requirements Added by User
- Add dark/light mode toggle
- Add development-only palette switch near theme toggle
- Predefine multiple palette sets for both light and dark modes
- Add CV download button wired to `public/cv/UditAsopa_CV.pdf`
- Keep project local-ready first; later deployable to GitHub Pages and optionally Netlify

---

## Review Notes
- Root-folder data was read-only consumed for content extraction.
- No file was modified outside the new repo area.
- New repo folder renamed and CV copied successfully.

---

## QUESTIONS FOR FINAL APPROVAL

1. ✅ Color palette: **Option 1 (Earth Observation)** or prefer Option 2/3?
2. ✅ All 8 sections above, or adjust?
3. ✅ Featured projects: use top 5 listed above?
4. ✅ Any custom brand message/tagline for hero section?
5. ✅ Testimonials: Should I extract from reference site style, or leave blank for you to add?
6. ✅ Ready to build? (I'll track progress in todo.md, verify each phase)

Once approved, I'll execute **Phase 1 → Phase 2 → Phase 3 → Phase 4 → Phase 5 → Deploy to local** systematically with full verification.

