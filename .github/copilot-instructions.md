# Universal Project Coding & Management Guide

This guide defines universal coding standards, project management workflows, and coordination practices for multi-language development projects. Language- and framework-specific guidance is located in `.github/instructions/`. AI personas for specialized domain guidance are located in `.github/personas/`.

---

## 1. Project Architecture & Management

- **API-First Architecture**  
  - Backend exposes only API endpoints (returns JSON/data).  
  - Frontend consumes APIs for all UI rendering.  
  - Strict separation of data and presentation layers.

- **Language-Specific Best Practices**  
  - Always follow idioms/conventions from `.github/instructions/`.
  - Use established frameworks and libraries per language.
  - Maintain consistency across similar codebases.

- **Project Management Files & Structure**  
  ```
  .github/
  ├── copilot-instructions.md        # Main index (this file)
  ├── instructions/                  # Language-specific instructions
  ├── personas/                      # AI personas for role/domain guidance
  ├── REQUIREMENTS.md                # Project requirements/specs
  ├── PLAN.md                        # Execution plan/tasks/priorities
  ├── CHANGELOG.md                   # Version history, completed changes
  ├── WHITELIST.md                   # Approved dependencies/modules
  ├── BLACKLIST.md                   # Prohibited/deprecated modules/practices
  └── wiki/                          # Project documentation (GitHub wiki)
  ```
  - **Use `YYYY.MM.DD-<#####>` format for versioning.**

---

## 2. Workflow & Change Management

### End-to-End Project Workflow
1. **Requirements:**  
   - Document all specs in `REQUIREMENTS.md`.
2. **Planning:**  
   - Create/update task lists in `PLAN.md`, referencing requirements and instructions.
3. **Development:**  
   - Follow `.github/instructions/` standards and reference relevant personas.
4. **Tracking:**  
   - Record all completed changes in `CHANGELOG.md` (most recent at top).
   - Increment build number on each commit.
5. **Documentation:**  
   - Update the `wiki/` for all features and changes.
6. **Dependency Management:**  
   - Only use libraries listed in `WHITELIST.md`.  
   - Update `BLACKLIST.md` for prohibited/deprecated/insecure packages.

### Change Management Workflow
- Always start next task from `PLAN.md`.
- Select proper persona(s) from `.github/personas/` for guidance.
- On completion, update `CHANGELOG.md` with:
  - version, date, summary, instructions/personas used.
- Use `CHANGELOG.md` to resume progress and inform team.

---

## 3. Coding & Review Standards

### Universal Rules & Best Practices
- **Separation of Concerns:**  
  - Never mix presentation and data logic.
- **Consistent Naming:**  
  - camelCase (JS/TS), snake_case (Python), etc.
- **Descriptive Variables/Functions:**  
  - No ambiguous names (e.g., avoid `data`, `foo`, `bar`).
- **Comment Complex Logic:**  
  - No redundant or obvious comments.
- **Keep Functions Small:**  
  - Single-responsibility; modular design.
- **Consistent File Structure:**  
  - Group by domain/functionality; predictable imports/exports.
- **Formatting:**  
  - Use language-standard linters (Prettier, gofmt, rustfmt, Black, etc.).
  - Max line length: 100 chars.
  - Trailing commas in multiline structures.
  - Follow language-specific indentation.

---

### Security Guidelines
- **Input Validation & Sanitization:**  
  - All user and external data must be validated/sanitized.
  - Use parameterized queries for all database operations.
- **Authentication & Authorization:**  
  - Never hardcode secrets or API keys (use secure vaults/envs).
  - Use RBAC where appropriate.
- **Data Protection:**  
  - Always use HTTPS for external comms.
  - Encrypt sensitive data at rest/in-transit.
  - Comply with GDPR/CCPA and other data privacy laws.
- **Emerging Standard:**  
  - **Supply chain security:**  
    - Use automated tools (e.g., Dependabot, npm audit) to scan dependencies.
    - Regularly review/rotate secrets and credentials.

---

### Performance & Resource Management
- Avoid N+1 queries.
- Implement caching and pagination for large data.
- Monitor and profile critical code (use APM where feasible).
- Use connection pooling; always close open resources.

---

### Error Handling & Logging
- Use structured error handling (try-catch/finally or equivalents).
- Custom error types for domain-specific errors.
- Return meaningful error messages (never leak stack traces to end-users).
- Use consistent logging levels (DEBUG, INFO, WARN, ERROR).
- Correlate logs with request/trace IDs.
- **Never log PII/secrets.**
- Use structured logging (JSON) if supported.

---

### Testing Standards
- **Unit Tests:**  
  - All new functions must have unit tests.
  - Target 80%+ code coverage.
  - Use Arrange-Act-Assert; descriptive test names.
- **Integration Tests:**  
  - Critical workflows must have integration tests; mock external dependencies.
- **Test File Structure:**  
  - All tests in `tests/`, named `{version}-{filename}.{ext}`.
  - Use `describe` blocks for grouping.
- **CI/CD Integration:**  
  - Tests must pass before merge.
  - Code coverage reported in pipeline.

---

### Accessibility & Compliance
- **Accessibility:**  
  - All UI must meet [WCAG 2.1 AA](https://www.w3.org/WAI/WCAG21/quickref/) accessibility standards.
  - Use semantic HTML5 elements and ARIA attributes.
- **REST API Standards:**  
  - Follow [OpenAPI/Swagger](https://swagger.io/specification/) for API docs.
  - Use proper HTTP status codes and methods.
- **Legal & Licensing:**  
  - All code must comply with open-source and company licensing.
  - Document third-party code usage.

---

## 4. AI Personas & Specialized Guidance

- Use role/domain-specific AI personas in `.github/personas/` for code review, guidance, and prompt engineering.
- Reference persona templates for creating new roles.
- Encourage AI-assisted code reviews—**always validate Copilot/AI code before merging.**

---

## 5. Development Tooling & Automation

- Enforce linters/formatters per language (configured in repo).
- Integrate automated dependency updates/scanning (e.g., Dependabot).
- Generate and maintain API documentation from code comments.
- Automate documentation updates with each version.
- Use CI/CD pipelines for test, lint, build, deploy, and security checks.
- Leverage `CHANGELOG.md` for automated release notes and reporting.
- Cross-reference all documentation and code changes in wiki.

---

## 6. GitHub Copilot & AI Code Assistance

- **Prompt Engineering:**  
  - Write clear, descriptive comments and meaningful variable names.
  - Break complex problems into small, modular functions.
- **Review Process:**  
  - All Copilot/AI code must be reviewed and tested before acceptance.
  - Copilot suggestions must comply with repo patterns and standards.
- **Context Management:**  
  - Keep related code together for best context.
  - Document complex business logic to aid AI suggestions.

---

## 7. Troubleshooting & Help

- If Copilot suggestions lack context, check naming and file structure.
- For poor test/code suggestions, ensure files follow naming conventions and established patterns.
- Review persona and instruction files for specific guidance.
- Consult the `wiki/` and codebase for similar implementations.

---

## 8. Additional Recommendations (2025 Standards)
- **[NEW] Adopt OpenTelemetry for distributed tracing across backend services.**
- **[NEW] Use GitHub Advanced Security (if available) for secret scanning and code scanning.**
- **[NEW] Ensure all third-party dependencies are SBOM (Software Bill of Materials) tracked for security.**
- **[NEW] Require code review sign-off from at least one human and one AI persona for critical PRs.**
- **[NEW] Prefer Infrastructure as Code (IaC) for all environment and deployment definitions (e.g., Terraform, Ansible, etc.).**
- **[NEW] Containerize all deployable applications; document build/run in the wiki.**
- **[NEW] Use DORA metrics (Deployment Frequency, Lead Time for Changes, Change Failure Rate, Time to Restore Service) to measure and optimize delivery performance.**

---

*Updated: 2025-08-08*
