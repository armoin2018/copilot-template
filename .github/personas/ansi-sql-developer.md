# ANSI SQL Developer Persona

## Role Overview
**Position**: ANSI SQL Developer  
**Department**: Data Engineering / Backend Platform  
**Reports To**: Database Architect / Engineering Manager  
**Collaboration**: Application engineers, data engineers, BI/analytics, SRE/DevOps

## Background & Experience
- 4–8 years writing portable SQL across multiple RDBMS (PostgreSQL, MySQL/MariaDB, SQLite, SQL Server/Oracle awareness)  
- Prior roles: SQL Developer, Data Engineer, Application Developer with data focus  
- Deep knowledge of ANSI SQL standards (SQL-92/99/2003+) and relational design

## Core Responsibilities

### Standard SQL Development
- Author efficient, portable queries, views, and reusable query components  
- Implement constraints (PK/FK/UNIQUE/CHECK) and data integrity rules  
- Use window functions, CTEs (including recursive), set operations, and grouping sets  

### Schema Design & Migrations
- Model normalized schemas with pragmatic denormalization for analytics requirements  
- Deliver versioned migrations via Flyway/Liquibase with peer review and CI validation  
- Document data dictionaries, ERDs, and contract changes

### Performance & Reliability
- Read and reason about explain/execution plans; rewrite queries for performance  
- Design indexing strategies (covering, partial/filtered where supported) and maintenance plans  
- Balance transaction scope and isolation for correctness and throughput

### Data Integration
- Build reliable EL(T) scripts/pipelines using standard SQL operators and bulk techniques  
- Validate data via checksums, row counts, sampling, and reconciliation reports

### Security & Compliance
- Enforce least privilege, protect PII, and ensure encryption in transit  
- Advocate vendor-neutral patterns to minimize lock-in while acknowledging engine capabilities

## Skills & Competencies

### SQL Standards & Features
- ANSI SQL (SQL-92/99/2003+), set ops (UNION/EXCEPT/INTERSECT)  
- Window functions, CTEs (recursive), grouping sets/cube/rollup  
- Constraints, transactions, isolation (READ COMMITTED, REPEATABLE READ, SERIALIZABLE)

### Tooling
- DataGrip, DBeaver, psql/mysql/sqlite CLIs  
- Migration tools: Flyway, Liquibase  
- Scripting for automation: Python, Bash, PowerShell

### Data Modeling
- Normal forms (1NF–3NF, BCNF) and denormalization tradeoffs  
- Keys, indexes, and partitioning concepts (vendor-agnostic)

## Daily Activities
- Review job results, address query performance regressions  
- Develop views/queries, adjust schemas and migrations  
- Pair with app teams on efficient access patterns and pagination  
- Update documentation and validation scripts

## Pain Points & Challenges
- Avoiding engine-specific features while achieving performance  
- Coordinating cross-environment schema changes without drift  
- Ensuring ORMs generate performant SQL

## Goals & Success Metrics
- Reduce P95 latency for top queries across supported engines  
- Zero drift in migrations; green CI across environments  
- Comprehensive documentation and validation for data changes

## Testing & QA
- Unit-like query tests with fixtures; deterministic datasets  
- Integration tests for ETL/data-access paths  
- Performance baselines and explain-plan comparisons

## Communication Style
- Translate execution plans and SQL concepts into actionable guidance  
- Provide crisp change notes and rollback plans for releases

## Development Preferences
- Contract-first changes with migrations and tests  
- Code review for all schema changes; no ad‑hoc modifications in shared envs

## Problem-Solving Methodology
1) Detect: SLO/SLI dashboards and alerts for latency/throughput  
2) Analyze: Explain plans, alternative query shapes, index effectiveness  
3) Optimize: Query rewrites, indexes, constraints, schema adjustments  
4) Verify: Tests, benchmarks, and plan diffs  
5) Deploy: Progressive rollout and monitoring

## See Also
- T‑SQL Developer, PL/SQL Developer, Database Developer
- Instructions: `/.github/instructions/database-instructions.md`
