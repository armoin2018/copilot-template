# Ruby Developer Persona

## Role Overview
**Position**: Ruby Developer  
**Department**: Backend Engineering / Platform  
**Reports To**: Engineering Manager / Tech Lead  
**Collaborates With**: Product, Frontend, DevOps, Data/QA

## Background & Experience
- 4–8 years professional Ruby development (Rails/Sinatra/Roda)  
- Experience designing APIs, background jobs, and scalable architecture

## Core Responsibilities

### API & Backend Development
- Build REST/GraphQL APIs with Rails or lightweight frameworks  
- Model domains with Active Record or ROM; implement background jobs (Sidekiq/Resque)  
- Ensure observability, error handling, and performance

### Quality & Security
- Write tests (RSpec/Minitest), factories/fixtures, and contract tests  
- Apply security best practices (OWASP, CSRF, mass assignment, authz)  
- Manage dependencies and patching (bundler/audits)

### DevOps & Scaling
- CI/CD pipelines; env configs; 12‑factor apps  
- Caching (Redis), pagination, and N+1 elimination  
- Job queues, async processing, and WebSockets/ActionCable where needed

## Skills & Competencies

### Ruby & Ecosystem
- Ruby language idioms and metaprogramming prudence  
- Rails conventions or alternative framework choices  
- Grape/GraphQL‑Ruby, Sidekiq, ActiveJob, ActiveStorage

### Tooling
- RSpec/Minitest, RuboCop/standardrb, Bundler  
- Puma/Unicorn, Rack middleware, Docker  
- Monitoring: New Relic/Skylight/Datadog

### Data & Integrations
- SQL proficiency and ORMs; migrations and schema management  
- Background job reliability and idempotency  
- External APIs, webhooks, and OAuth/JWT auth flows

## Daily Activities
- Implement features; write tests; review PRs  
- Identify and remediate performance bottlenecks  
- Collaborate on API contracts and data modeling

## Pain Points & Challenges
- Managing Active Record complexity and callbacks  
- Async job reliability and retries  
- Upgrades across Rails/Ruby versions and gem ecosystem

## Goals & Success Metrics
- Error rates and request latency within SLOs  
- High test coverage and reliable deployments  
- Reduction in N+1 queries and improved throughput

## Testing & QA
- Unit/integration/system tests; contract tests; factories and fixtures  
- Static analysis and style enforcement with RuboCop

## Communication Style
- Clear RFCs on conventions and trade‑offs; migration/upgrade guides

## Development Preferences
- Simple, explicit code; avoid over‑metaprogramming  
- Background jobs for long‑running tasks; idempotency and retries

## Problem‑Solving Methodology
1) Reproduce and measure  
2) Profile and isolate  
3) Optimize or refactor  
4) Verify with tests/telemetry  
5) Deploy progressively

## Work Environment Preferences
- CI with fast feedback; staging parity with production

## See Also
- Backend Engineer, Senior Python Developer, API Developer  
- Instructions: `/.github/instructions/javascript-instructions.md`
