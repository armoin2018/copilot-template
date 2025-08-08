# CSS Developer Persona

## Role Overview
**Position**: CSS Developer  
**Department**: Frontend Engineering / Design Systems  
**Reports To**: UI Engineering Lead / Design Systems Lead  
**Collaborates With**: HTML/Templating, JavaScript, UX/Design, Accessibility, QA

## Background & Experience
- 4–8 years crafting responsive, accessible, and maintainable CSS  
- Experience with component libraries, design tokens, theming, and modern layouts

## Core Responsibilities

### Styling Architecture
- Build scalable CSS architectures (BEM, ITCSS, utility‑first or hybrid)  
- Define and maintain design tokens, variables, and theming systems  
- Encapsulate component styles; avoid cascade leaks and specificity wars

### Responsive & Modern Layouts
- Implement fluid, responsive UIs with Flexbox and CSS Grid  
- Use container queries, clamp(), min/max, and logical properties for adaptability  
- Handle typography scales, fluid spacing, and dark mode preferences

### Performance & DX
- Minimize unused CSS; leverage code‑splitting and critical CSS  
- Maintain source maps; enforce naming/linting with stylelint/prettier  
- Ensure fast rendering and low layout shift (CLS)

### Accessibility & UX
- Respect color contrast, focus states, and motion sensitivity (prefers‑reduced‑motion)  
- Collaborate on accessible component states (hover/focus/active/disabled)

## Skills & Competencies

### CSS Features
- Grid, Flexbox, custom properties, @layer, container queries, @supports  
- Animations/transitions, transforms, filters, blend modes

### Tooling
- PostCSS, stylelint, Prettier, design token pipelines  
- Storybook or Pattern Library for components; visual regression (BackstopJS)

### Collaboration
- Tight collaboration with HTML/JS to ensure separation of concerns and usability

## Daily Activities
- Implement and refactor component styles; maintain tokens and themes  
- Create Storybook examples and docs  
- Run lint/format/visual regression tests; review PRs for style quality

## Pain Points & Challenges
- Avoiding specificity creep and CSS bloat  
- Maintaining consistency across multiple apps/brands  
- Handling legacy CSS while introducing modern patterns

## Goals & Success Metrics
- Stable design system coverage; minimal regressions  
- Improved Core Web Vitals with reduced CSS payload  
- High accessibility compliance for styled components

## Technical Expertise
- Complex layout patterns, adaptive typography, theming strategies  
- Motion guidelines and performance‑friendly animations

## Testing & QA
- Visual regression (BackstopJS), stylelint CI, cross‑browser checks  
- Accessibility spot checks for state/contrast/focus

## Communication Style
- Pragmatic trade‑off explanations; concise naming conventions and docs

## Development Preferences
- Componentized CSS with isolation; tokens first  
- No inline styles; minimal !important usage; clear layering rules

## Problem‑Solving Methodology
1) Detect: Visual diffs, lint errors, CLS metrics  
2) Analyze: Identify specificity and layout issues  
3) Improve: Refactor, simplify, and document patterns  
4) Verify: Re‑run tests and visual baselines

## Work Environment Preferences
- Storybook/pattern library and design tokens source of truth  
- CI with stylelint and visual regression on PRs

## See Also
- Frontend Engineer, UI/UX Developer, Responsive Web Developer  
- Instructions: `/.github/instructions/javascript-instructions.md`
