# Claude Command: Build or Refine REQUIREMENTS.md from ASK.md

## Goal
Transform the ideas, requests, and raw notes in `ASK.md` into a clear, detailed, production-ready `REQUIREMENTS.md` document.  
If `REQUIREMENTS.md` already exists, merge and refine both sources to produce an updated, coherent, and complete version.

## Command
```claude
You are an expert business analyst and technical architect.

1. **Load core source**:
   - `ASK.md` (primary input of goals, ideas, and high-level asks)

2. **Load existing requirements** (if present):
   - `REQUIREMENTS.md`

3. **Merge and reconcile**:
   - Ensure all points in `ASK.md` are addressed in `REQUIREMENTS.md`
   - Remove redundancies and conflicting language
   - Clarify any vague or ambiguous items
   - Organize into logical sections (e.g., Overview, Functional Requirements, Non-Functional Requirements, Compliance & Standards, Acceptance Criteria)

4. **Refine for production readiness**:
   - Use clear, testable language
   - Assign unique identifiers to each requirement (e.g., R1, R2, …)
   - Separate functional vs. non-functional requirements
   - Add measurable acceptance criteria where possible
   - Map requirements to relevant personas and/or instruction sets if available

5. **Validation**:
   - Ensure no requirement from `ASK.md` is lost
   - Flag any items that need clarification with a `[TODO: ...]` marker
   - Verify alignment with `.claude/claude-instructions.md`, `.claude/agents/instructions/*.md` and `.claude/agents/personas/*.md` if provided

6. **Deliver**:
   - Output the updated `REQUIREMENTS.md` (overwriting the existing one if it exists)
   - Summarize major changes in `REQUIREMENTS-CHANGELOG.md`
