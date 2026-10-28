# Sources

Skills copied unmodified from catalog/skills-catalog.zip (see catalog/index.csv). Level: candidate, NOT tested or run by us.
Licenses: see ../../catalog/LICENSES.md.

| Skill | Resource | What it does | Risk flags found by pattern scan (not a review) |
|---|---|---|---|
| docker-patterns | ecc | Docker and Docker Compose patterns for local development, hardened CLI installer harnesses, container security, networking, volumes, and ... | api_key, npm i, wget |
| kubernetes-patterns | ecc | Kubernetes workload patterns, resource management, RBAC, probes, autoscaling, ConfigMap/Secret handling, and kubectl debugging for produc... | .py |
| terraform-engineer | jeffallan-claude-skills | Use when implementing infrastructure as code with Terraform across AWS, Azure, or GCP. | none |
| deployment-patterns | ecc | Deployment workflows, CI/CD pipeline patterns, Docker containerization, health checks, rollback strategies, and production readiness chec... | api_key, npx, pip install, wget |
| devops-engineer | jeffallan-claude-skills | Creates Dockerfiles, configures CI/CD pipelines, writes Kubernetes manifests, and generates Terraform/Pulumi infrastructure templates. | .py, curl, pip install |
| monitoring-expert | jeffallan-claude-skills | Configures monitoring systems, implements structured logging pipelines, creates Prometheus/Grafana dashboards, defines alerting rules, an... | none |
| sre-engineer | jeffallan-claude-skills | Defines service level objectives, creates error budget policies, designs incident response procedures, develops capacity models, and prod... | none |
| cloud-architect | jeffallan-claude-skills | Designs cloud architectures, creates migration plans, generates cost optimization recommendations, and produces disaster recovery strateg... | none |
| kubernetes-specialist | jeffallan-claude-skills | Use when deploying or managing Kubernetes workloads. | none |
| deploy-to-vercel | vercel-agent-skills | Deploy applications and websites to Vercel. | .sh, curl, npm i |
| devcontainer-setup | trail-of-bits-skills | Creates devcontainers with Claude Code, language-specific tooling (Python/Node/Rust/Go), and persistent volumes. | .py, .sh, api_key, npm i, rm -rf |

## Moved from infra

| Skill | Resource | What it does | Risk flags found by pattern scan (not a review) |
|---|---|---|---|
| api-design | ecc | REST API design patterns including resource naming, status codes, pagination, filtering, error responses, versioning, and rate limiting f... | api key, api-key |
| api-designer | jeffallan-claude-skills | Use when designing REST or GraphQL APIs, creating OpenAPI specifications, or planning API architecture. | npx |
| graphql-architect | jeffallan-claude-skills | Use when designing GraphQL schemas, implementing Apollo Federation, or building real-time subscriptions. | none |
| fastapi-patterns | ecc | FastAPI best practices covering project structure, Pydantic v2 schemas, dependency injection, async handlers, authentication, authorizati... | .py |
| mcp-builder | anthropic-skills-official | Guide for creating high-quality MCP (Model Context Protocol) servers that enable LLMs to interact with external services through well-des... | .py, mcp, npx, raw.githubusercontent, webfetch |
| mcp-server-patterns | ecc | Build MCP servers with Node/TypeScript SDK — tools, resources, prompts, Zod validation, stdio vs Streamable HTTP. | mcp, npm i |
| mcp-developer | jeffallan-claude-skills | Use when building, debugging, or extending MCP servers or clients that connect AI systems with external tools and data sources. | mcp, npx, pip install |
| claude-api | anthropic-skills-official | /- | .py, api key, api_key, apikey, api-key, curl, mcp, webfetch |
| fastapi-expert | jeffallan-claude-skills | Use when building high-performance async Python APIs with FastAPI and Pydantic V2. | .py |
| api-connector-builder | ecc | Build a new API connector or provider by matching the target repo's existing integration pattern exactly. | .py, mcp |
| mcp-dependency-review | ecc | Statically review MCP configuration for mutable package references before approval or CI, without executing discovered MCP servers. | mcp, npx |
| mcp-cli | superpowers-lab | Use MCP servers on-demand via the mcp CLI tool - discover tools, resources, and prompts without polluting context with pre-loaded MCP int... | api_key, mcp, npx |
