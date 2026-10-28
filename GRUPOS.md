# Grupos de skills

19 grupos, 239 skills (o acervo completo tem 646; o resto fica em `catalog/` para consulta).
Estado: os 4 primeiros foram testados no Claude Code. Os outros 10 **não foram testados** (só selecionados e passaram por uma varredura de padrões de risco, listada no `SOURCES.md` de cada grupo).
Como usar, escolher só algumas e adicionar mais: veja `GUIA.md`.

## Testados

### 1. software-dev: escrever e revisar código
- `implement`: implementa a partir de uma spec ou ticket, usando `tdd` e `code-review`.
- `tdd`: desenvolvimento guiado por testes (teste primeiro).
- `diagnosing-bugs`: acha a causa raiz de bug difícil antes de mexer no código.
- `code-review`: revisa o diff e aponta problemas.
- Comando: `/software-dev:dev-flow <tarefa>`

### 2. research-synthesis: pergunta até relatório com fontes
- `research`: investiga em fontes primárias e salva as notas.
- `scientific-thinking-scholar-evaluation`: avalia se as fontes sustentam cada afirmação.
- `article-writing`: escreve o relatório final com citações.
- Comando: `/research-synthesis:report <pergunta>`

### 3. design: briefing até especificação
- `frontend-design-direction`: transforma o briefing em direção de design.
- `design-system`: define tokens (cores, tipografia, espaçamento) e componentes.
- `accessibility`: confere contra WCAG 2.2 AA.
- Comando: `/design:spec <briefing>`

### 4. presentations: conteúdo até slides
- `writing-beats`: organiza o conteúdo em sequência de ideias.
- `frontend-slides`: monta os slides num HTML único.
- `writing-guidelines`: revisa o texto (regras fixas guardadas no plugin).
- Comando: `/presentations:deck <conteúdo>`

## Não testados

### 5. security-audit: segurança de código
- `security-review`: checklist de segurança ao mexer em autenticação, entrada de usuário, segredos e APIs.
- `security-reviewer`: acha vulnerabilidades e gera relatório com severidade.
- `secure-code-guardian`: guia para implementar autenticação e evitar o OWASP Top 10.
- `audit-context-building`: entende o código antes de procurar bugs.
- `variant-analysis`: depois de achar um bug, procura outros iguais no código.
- `sharp-edges`: aponta APIs e configurações que levam a erro de segurança.
- `supply-chain-risk-auditor`: audita risco nas dependências.

### 6. qa-release: testes e verificação antes de entregar
- `e2e-testing`: testes ponta a ponta com Playwright.
- `property-based-testing`: testes por propriedades (Hypothesis, fast-check etc.).
- `mutation-testing`: mede a qualidade dos testes com mutantes (precisa das ferramentas mewt/muton).
- `test-master`: estratégia geral de testes.
- `verification-before-completion`: obriga rodar a verificação antes de dizer que terminou.
- `canary-watch`: monitora uma URL depois do deploy.
- `finishing-a-development-branch`: decide como integrar o trabalho (merge, PR, descarte).

### 7. devops-infra: infraestrutura e deploy
- `docker-patterns`: Docker e Compose, com segurança.
- `kubernetes-patterns`: workloads, recursos, probes, RBAC.
- `terraform-engineer`: infraestrutura como código (AWS, Azure, GCP).
- `deployment-patterns`: CI/CD, health checks, rollback.
- `devops-engineer`: cria Dockerfiles, pipelines e manifests.
- `monitoring-expert`: logs estruturados, Prometheus/Grafana.
- `sre-engineer`: SLOs, orçamento de erro, resposta a incidentes.

### 8. database: bancos de dados
- `database-migrations`: migrações seguras e reversíveis.
- `database-optimizer`: otimiza consultas (PostgreSQL e MySQL).
- `postgres-patterns`: modelagem, índices e segurança no PostgreSQL.
- `mysql-patterns`: o mesmo para MySQL/MariaDB.
- `sql-pro`: escreve e otimiza SQL, desenha esquemas.
- `redis-patterns`: cache, locks, rate limiting, pub/sub.
- `prisma-patterns`: Prisma ORM em TypeScript.

### 9. apis-mcp: APIs e servidores MCP
- `api-design`: padrões REST (nomes, status, paginação, erros).
- `api-designer`: desenha REST/GraphQL e especificações OpenAPI.
- `graphql-architect`: esquemas GraphQL e Apollo Federation.
- `fastapi-patterns`: boas práticas de FastAPI.
- `mcp-builder`: guia oficial para criar servidores MCP.
- `mcp-developer`: constrói e depura servidores e clientes MCP.
- `mcp-server-patterns`: servidores MCP com Node/TypeScript.
- `claude-api`: usar a API da Claude e o SDK (modelos, streaming, ferramentas).

### 10. data-ai: dados, prompts e ML
- `prompt-engineer`: escreve, refatora e avalia prompts.
- `prompt-optimizer`: analisa um rascunho de prompt e sugere melhorias (focada no ecossistema ECC).
- `prompt-caching-strategy`: usa cache de prompt para economizar custo.
- `cost-aware-llm-pipeline`: roteamento por modelo e controle de custo de LLM.
- `rag-architect`: sistemas RAG (chunking, embeddings, busca).
- `ml-pipeline`: pipelines de ML com rastreio de experimentos.
- `pandas-pro`: análise de dados com pandas.
- `pytorch-patterns`: treino de modelos em PyTorch.

### 11. docs-writing: documentação e escrita
- `doc-coauthoring`: escrever documentos em etapas, com o usuário.
- `code-documenter`: docstrings, OpenAPI e documentação técnica.
- `docs-governance`: auditoria só de leitura da documentação do projeto.
- `brand-voice`: extrai o estilo de escrita de textos reais.
- `writing-fragments`: junta fragmentos soltos, sem estrutura ainda.
- `writing-shape`: transforma o material em artigo, parágrafo a parágrafo.
- `internal-comms`: comunicados internos nos formatos da empresa.
- `seo`: auditoria e melhorias de SEO.

### 12. agent-orchestration: planejar e dividir trabalho
- `brainstorming`: explora a ideia antes de criar algo.
- `grill-me`: entrevista dura para fortalecer um plano.
- `to-spec`: transforma a conversa em especificação.
- `to-tickets`: quebra o plano em tickets com dependências.
- `writing-plans`: escreve o plano de implementação antes de codar.
- `executing-plans`: executa um plano passo a passo.
- `subagent-driven-development`: executa o plano com subagentes.
- `dispatching-parallel-agents`: roda tarefas independentes em paralelo.
- `planning-with-files`: planejamento persistente em arquivos (os scripts auxiliares dele não foram copiados).
- `handoff`: resume a conversa para outro agente continuar.

### 13. learning: aprender e ensinar
- `learn`: registra aprendizados do projeto.
- `teach`: ensina um conceito dentro do projeto.
- `socratic-tutors`: ensina por perguntas, sem dar a resposta direta.
- `scaffold-exercises`: monta pastas de exercícios com problemas e soluções.
- `codebase-onboarding`: guia de entrada para um código desconhecido.

### 14. business-ops: análise e operação
- `competitive-platform-analysis`: mapeia e pontua concorrentes.
- `competitive-report-structure`: monta o relatório competitivo.
- `project-flow-ops`: triagem de issues e PRs (GitHub e Linear).
- `github-ops`: operações no repositório GitHub.
- `knowledge-ops`: gestão e busca em base de conhecimento.
- `growth-log`: registra padrões reutilizáveis do trabalho concluído.

## Ficaram de fora de propósito
Skills que enviam mensagens, fazem cobrança ou prospecção (risco Crítico), as que dependem de fuzzers e scanners externos, as obsoletas (`continuous-learning`) e as de nicho (homelab, energia, logística). Continuam em `catalog/`.


---

# Ampliação (2026-10-27): melhores skills de todo o acervo

Grupos 5 a 14 receberam mais skills e entraram 4 grupos novos (15 a 18). Nenhuma foi testada. As descrições abaixo vêm do índice, em inglês (a explicação em português vale para as listas acima).

## security-audit (skills adicionadas)
- `agentic-actions-auditor`: Audits GitHub Actions workflows for security vulnerabilities in AI agent integrations including Claude Code Action, Gemini CLI,...
- `agent-security`: Use when reviewing or writing LLM, RAG, MCP, tool, or agent code for OWASP-aligned security issues; triggered by "owasp my code...
- `agent-security-hardening`: Security hardening guidance for AI agent frameworks that process untrusted content, invoke tools, write workspace files, manage...
- `audit-prep-assistant`: Prepares codebases for security review using Trail of Bits' checklist.
- `cso`: Security audit: supported static findings; qualified profiles add reproduction and repair candidates.
- `differential-review`: Performs security-focused differential review of code changes.
- `fp-check`: Systematically verifies suspected security bugs to eliminate false positives, producing a TRUE POSITIVE or FALSE POSITIVE verdi...
- `prove-patch`: Use when a local security patch commit needs independent scoped and three-arm proof.
- `repo-scan`: Bootstrap pointer that installs the external repo-scan skill from a pinned, reviewable commit.
- `secure-workflow-guide`: Guides through Trail of Bits' 5-step secure development workflow.
- `security-scan`: Scan your Claude Code configuration (.claude/ directory) for security vulnerabilities, misconfigurations, and injection risks u...
- `trailmark-finding-triage`: Performs graph-assisted triage of a single security finding, SARIF result, weAudit annotation, suspicious function, or report e...
- `vulnerability-triage-brocards`: (veja o SKILL.md)

## qa-release (skills adicionadas)
- `ai-regression-testing`: Regression testing strategies for AI-assisted development.
- `benchmark`: Web performance regression detection.
- `browser-qa`: Run automated post-deploy UI verification with a browser automation MCP (claude-in-chrome, Playwright, or Puppeteer): console-e...
- `chaos-engineer`: Designs chaos experiments, creates failure injection frameworks, and facilitates game day exercises for distributed systems —...
- `hunt-regressions`: Use when discovering possible regressions from a pinned change and its callers before reproduction.
- `playwright-expert`: Use when writing E2E tests with Playwright, setting up test infrastructure, or debugging flaky browser tests.
- `qa-only`: Report browser/API/CLI/job/worker/webhook bugs.
- `receiving-code-review`: Use when receiving code review feedback, before implementing suggestions, especially if feedback seems unclear or technically q...
- `requesting-code-review`: Use when completing tasks, implementing major features, or before merging to verify work meets requirements
- `review-pr`: Reviews the current branch's changes against its base branch as a pull request: correctness of new and modified code, test cove...
- `validate-bug`: Use when a bug PoC package needs an independent rerun and judgment before patching.
- `webapp-testing`: Toolkit for interacting with and testing local web applications using Playwright.

## devops-infra (skills adicionadas)
- `cloud-architect`: Designs cloud architectures, creates migration plans, generates cost optimization recommendations, and produces disaster recove...
- `deploy-to-vercel`: Deploy applications and websites to Vercel.
- `devcontainer-setup`: Creates devcontainers with Claude Code, language-specific tooling (Python/Node/Rust/Go), and persistent volumes.
- `kubernetes-specialist`: Use when deploying or managing Kubernetes workloads.

## database (skills adicionadas)
- `clickhouse-io`: ClickHouse database patterns, query optimization, analytics, and data engineering best practices for high-performance analytica...
- `mongodb-connection`: Optimize MongoDB client connection configuration (pools, timeouts, patterns) for any supported driver language.
- `mongodb-natural-language-querying`: Generate read-only MongoDB queries (find) or aggregation pipelines using natural language, with collection schema context and s...
- `mongodb-query-optimizer`: Help with MongoDB query optimization and indexing.
- `mongodb-schema-design`: MongoDB schema design patterns and anti-patterns.
- `mongodb-search-and-ai`: Covers everything about search in MongoDB: Atlas Search (full-text), Vector Search (semantic), and Hybrid Search.
- `mysql`: Plan and review MySQL/InnoDB schema, indexing, query tuning, transactions, and operations.
- `postgres`: PostgreSQL best practices, query optimization, connection troubleshooting, and performance improvement.
- `postgres-pro`: Use when optimizing PostgreSQL queries, configuring replication, or implementing advanced database features.

## apis-mcp (skills adicionadas)
- `api-connector-builder`: Build a new API connector or provider by matching the target repo's existing integration pattern exactly.
- `fastapi-expert`: Use when building high-performance async Python APIs with FastAPI and Pydantic V2.
- `mcp-cli`: Use MCP servers on-demand via the mcp CLI tool - discover tools, resources, and prompts without polluting context with pre-load...
- `mcp-dependency-review`: Statically review MCP configuration for mutable package references before approval or CI, without executing discovered MCP serv...

## data-ai (skills adicionadas)
- `dashboard-builder`: Build monitoring dashboards that answer real operator questions for Grafana, SigNoz, and similar platforms.
- `eval-harness`: Eval-driven development (EDD) framework for AI coding sessions — define capability and regression evals before coding, grade ...
- `fine-tuning-expert`: Use when fine-tuning LLMs, training custom models, or adapting foundation models for specific tasks.
- `goal-prompt`: Drafts copy-paste-ready /goal commands for goal mode in Claude Code and Codex.
- `iterative-retrieval`: Pattern for progressively refining context retrieval to solve the subagent context problem.
- `mle-workflow`: Production machine-learning engineering workflow for data contracts, reproducible training, model evaluation, deployment, monit...
- `regex-vs-llm-structured-text`: Decision framework for parsing structured text (quizzes, forms, invoices, receipts, tables) with a hybrid regex-first pipeline ...
- `spark-engineer`: Use when writing Spark jobs, debugging performance issues, or configuring cluster settings for Apache Spark applications, distr...
- `token-budget-advisor`: Offer a choice of response depth (25%/50%/75%/100%) with token estimates before answering, then answer at that level.

## docs-writing (skills adicionadas)
- `brand-discovery`: Run a structured, resumable multi-session brand identity interview across 8 modules (purpose, positioning, audience, personalit...
- `content-engine`: Create platform-native content systems for X, LinkedIn, TikTok, YouTube, newsletters, and repurposed multi-platform campaigns.
- `documentation-lookup`: Use up-to-date library and framework docs via Context7 MCP instead of training data.
- `document-release`: Release documentation audit.
- `i18n-sync`: Translate and synchronize application JSON locale files using source-key usage, project terminology, and focused validation.
- `living-docs-governance`: Keep a long-lived project's documentation from rotting by assigning existing project docs clear constitution, map, status, and ...
- `writing-for-agents`: Writing documents for agents.

## agent-orchestration (skills adicionadas)
- `agentic-engineering`: Operate as an agentic engineer using eval-first execution, decomposition, and cost-aware model routing.
- `blueprint`: Turn a one-line objective into a step-by-step construction plan for multi-session, multi-agent engineering projects: one-PR-siz...
- `context-budget`: Routes live context checks to the native Codex or Claude Code meter without scanning files, and performs a bounded static compo...
- `context-restore`: Restore working context saved earlier by /context-save.
- `context-save`: Save working context.
- `council`: Convene a four-voice council for ambiguous decisions, tradeoffs, and go/no-go calls.
- `grilling`: Grill the user relentlessly about a plan, decision, or idea.
- `grill-with-docs`: A relentless interview to sharpen a plan or design, which also creates docs (ADR's and glossary) as we go.
- `plan-ceo-review`: CEO/founder-mode plan review.
- `plan-design-review`: Designer's eye plan review — interactive, like CEO and Eng review.
- `plan-eng-review`: Eng manager-mode plan review.
- `prototype`: Build a throwaway prototype to answer a design question.
- `search-first`: Research-before-coding workflow: search npm/PyPI, MCP servers, skills, and GitHub for existing tools before writing custom code...
- `skill-creator`: Create new skills, modify and improve existing skills, and measure skill performance.
- `strategic-compact`: Suggests manual context compaction at logical intervals to preserve context through task phases rather than arbitrary auto-comp...
- `to-questionnaire`: Turn a decision you can't fully answer into a questionnaire for someone else to fill in.
- `triage`: Move issues and external PRs through a state machine of triage roles, categorise, verify, grill if needed, and write agent-read...
- `using-git-worktrees`: Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures a...
- `verification-loop`: Run a six-phase verification of a Claude Code session's work — build, type check, lint, tests with coverage, security grep, a...
- `wayfinder`: Plan a huge chunk of work (more than one agent session can hold) as a shared map of decision tickets on your issue tracker, and...
- `wizard`: Generate an interactive bash wizard that walks a human through steps only they can perform.
- `writing-skills`: Use when creating new skills, editing existing skills, or verifying skills work before deployment

## learning (skills adicionadas)
- `academy-guide`: (veja o SKILL.md)
- `discernment-nudge`: (veja o SKILL.md)

## business-ops (skills adicionadas)
- `benchmark-methodology`: Score a scoped competitor set into comparable profile cards: nine weighted dimensions (positioning, voice, visual craft, offer ...
- `contract-first`: Coordinate frontend/backend or service-to-service work through one authoritative machine-checkable contract (OpenAPI, AsyncAPI,...
- `google-workspace-ops`: Operate across Google Drive, Docs, Sheets, and Slides as one workflow surface for plans, trackers, decks, and shared documents.
- `investor-materials`: Create and update pitch decks, one-pagers, investor memos, accelerator applications, financial models, and fundraising materials.
- `marketing-campaign`: End-to-end marketing campaign planning and execution.
- `market-research`: Conduct market research, competitive analysis, investor due diligence, and industry intelligence with source attribution and de...
- `master-agreement-generator`: Generate review drafts of counterparty master agreements from one template plus a JSON spec, with role-selected clauses and a S...

## web-frontend (grupo novo)
- `angular-architect`: Generates Angular 17+ standalone components, configures advanced routing with lazy loading and guards, implements NgRx state ma...
- `composition-patterns`: (veja o SKILL.md)
- `frontend-design`: Guidance for distinctive, intentional visual design when building new UI or reshaping an existing one.
- `frontend-patterns`: Frontend development patterns for React, Next.js, state management, performance optimization, and UI best practices.
- `motion-foundations`: Motion tokens, spring presets, performance rules, device adaptation, accessibility enforcement, and SSR safety for React / Next...
- `nextjs-developer`: Use when building Next.js 14+ applications with App Router, server components, or server actions.
- `nuxt4-patterns`: Nuxt 4 app patterns for hydration safety, performance, route rules, lazy loading, and SSR-safe data fetching with useFetch and ...
- `react-best-practices`: React and Next.js performance optimization guidelines from Vercel Engineering.
- `react-expert`: Use when building React 18+ applications in .jsx or .tsx files, Next.js App Router projects, or create-react-app setups.
- `react-patterns`: React 18/19 patterns including hooks discipline, server/client component boundaries, Suspense + error boundaries, form actions,...
- `react-performance`: React and Next.js performance optimization patterns adapted from Vercel Engineering's React Best Practices (https://github.com/...
- `react-view-transitions`: Guide for implementing smooth, native-feeling animations using React's View Transition API (`<ViewTransition>` component, `addT...
- `theme-factory`: Toolkit for styling artifacts with a theme.
- `vue-expert`: Builds Vue 3 components with Composition API patterns, configures Nuxt 3 SSR/SSG projects, sets up Pinia stores, scaffolds Quas...
- `web-design-guidelines`: Review UI code for Web Interface Guidelines compliance.

## languages (grupo novo)
- `cpp-pro`: Writes, optimizes, and debugs C++ applications using modern C++20/23 features, template metaprogramming, and high-performance s...
- `csharp-developer`: Use when building C# applications with .NET 8+, ASP.NET Core APIs, or Blazor web apps.
- `django-expert`: Use when building Django web applications or REST APIs with Django REST Framework.
- `dotnet-core-expert`: Use when building .NET 8 applications with minimal APIs, clean architecture, or cloud-native microservices.
- `golang-patterns`: Idiomatic Go patterns, best practices, and conventions for building robust, efficient, and maintainable Go applications.
- `golang-pro`: Implements concurrent Go patterns using goroutines and channels, designs and builds microservices with gRPC or REST, optimizes ...
- `java-architect`: Use when building, configuring, or debugging enterprise Java applications with Spring Boot 3.x, microservices, or reactive prog...
- `javascript-pro`: Writes, debugs, and refactors JavaScript code using modern ES2023+ features, async/await patterns, ESM module systems, and Node...
- `kotlin-specialist`: Provides idiomatic Kotlin implementation patterns including coroutine concurrency, Flow stream handling, multiplatform architec...
- `laravel-specialist`: Build and configure Laravel 10+ applications, including creating Eloquent models and relationships, implementing Sanctum authen...
- `modern-cpp`: Guides C++ code toward modern idioms (C++20/23/26).
- `modern-python`: Configures Python projects with modern tooling (uv, ruff, ty).
- `nestjs-expert`: Creates and configures NestJS modules, controllers, services, DTOs, guards, and interceptors for enterprise-grade TypeScript ba...
- `php-pro`: Use when building PHP applications with modern PHP 8.3+ features, Laravel, or Symfony frameworks.
- `python-patterns`: Pythonic idioms, PEP 8 standards, type hints, and best practices for building robust, efficient, and maintainable Python applic...
- `python-pro`: Use when building Python 3.11+ applications requiring type safety, async programming, or robust error handling.
- `rails-expert`: Rails 7+ specialist that optimizes Active Record queries with includes/eager_load, implements Turbo Frames and Turbo Streams fo...
- `rust-engineer`: Writes, reviews, and debugs idiomatic Rust code with memory safety and zero-cost abstractions.
- `rust-patterns`: Idiomatic Rust patterns, ownership, error handling, traits, concurrency, and best practices for building safe, performant appli...
- `spring-boot-engineer`: Generates Spring Boot 3.x configurations, creates REST controllers, implements Spring Security 6 authentication flows, sets up ...
- `swift-expert`: Builds iOS/macOS/watchOS/tvOS applications, implements SwiftUI views and state management, designs protocol-oriented architectu...
- `typescript-pro`: Implements advanced TypeScript type systems, creates custom type guards, utility types, and branded types, and configures tRPC ...

## engineering-practices (grupo novo)
- `architecture-decision-records`: Capture architectural decisions as numbered ADR markdown files in docs/adr/ with context, alternatives considered, consequences...
- `architecture-designer`: Use when designing new high-level system architecture, reviewing existing designs, or making architectural decisions.
- `code-improver`: Runs an autonomous review-and-fix improvement loop over any code target — a skill, plugin, module, or directory — using a r...
- `code-maturity-assessor`: Systematic code maturity assessment using Trail of Bits' 9-category framework.
- `code-tour`: Create CodeTour `.tour` files — persona-targeted, step-by-step walkthroughs with real file and line anchors.
- `debugging-wizard`: Parses error messages, traces execution flow through stack traces, correlates log entries to identify failure points, and appli...
- `diagramming-code`: (veja o SKILL.md)
- `hexagonal-architecture`: Design, implement, and refactor Ports & Adapters systems with clear domain boundaries, dependency inversion, and testable use-c...
- `improve-codebase-architecture`: Scan a codebase for deepening opportunities, present them as a visual HTML report, then grill through whichever one you pick.
- `inherit-legacy-style`: Prevent AI style drift on legacy projects by scanning the codebase for implicit conventions, resolving conflicts with the opera...
- `legacy-modernizer`: Designs incremental migration strategies, identifies service boundaries, produces dependency maps and migration roadmaps, and g...
- `microservices-architect`: Designs distributed system architectures, decomposes monoliths into bounded-context services, recommends communication patterns...
- `pr`: Use when writing a PR body.
- `spec-miner`: Reverse-engineering specialist that extracts specifications from existing codebases.
- `systematic-debugging`: Use when encountering any bug, test failure, or unexpected behavior, before proposing fixes

## mobile (grupo novo)
- `android-clean-architecture`: Clean Architecture patterns for Android and Kotlin Multiplatform projects — module structure, dependency rules, UseCases, Rep...
- `compose-multiplatform-patterns`: Compose Multiplatform and Jetpack Compose patterns for KMP projects — state management, navigation, theming, performance, and...
- `dart-flutter-patterns`: Production-ready Dart and Flutter patterns covering null safety, immutable state with Freezed, async composition, widget archit...
- `flutter-expert`: Use when building cross-platform applications with Flutter 3+ and Dart.
- `kotlin-coroutines-flows`: Kotlin Coroutines and Flow patterns for Android and KMP — structured concurrency, Flow operators, StateFlow, error handling, ...
- `kotlin-patterns`: Idiomatic Kotlin patterns, best practices, and conventions for building robust, efficient, and maintainable Kotlin applications...
- `react-native-expert`: Builds, optimizes, and debugs cross-platform mobile applications with React Native and Expo.
- `react-native-patterns`: React Native and Expo app patterns — Expo Router navigation, state separation (server/client/route/form), TanStack Query data...
- `swift-concurrency-6-2`: Swift 6.2 Approachable Concurrency — single-threaded by default, @concurrent for explicit background offloading, isolated con...
- `swiftui-patterns`: SwiftUI architecture patterns, state management with @Observable, view composition, navigation, performance optimization, and m...




---

# Atualização: skills de gosto e design (2026-10-27)

Em **web-frontend** (agora 17 skills):
- `taste-skill` (nome interno `design-taste-frontend`): direção de arte anti-"cara de template" para landing pages e telas de app. Versão completa do repositório original (scripts Node, biblioteca de direções, referências). Os scripts abrem Chrome/Edge em modo headless e guardam um histórico em `~/.taste-skill/`. O script `assets.mjs` acessa a internet; só rode se quiser baixar imagens.
- `ui-ux-pro-max`: base local de design (estilos, paletas, pares de fontes, regras de UX, gráficos, 22 stacks) consultada por um script Python. Repositório original `nextlevelbuilder/ui-ux-pro-max-skill` (MIT). Não está no acervo; foi adicionada à mão.
- A `impeccable` foi removida: a cópia do acervo era incompleta e a versão completa exige `npx impeccable`.

## 19. landing-page (grupo novo, só comando)
- `/landing-page:build <briefing>`: briefing até uma landing page pronta em um arquivo HTML. Usa skills de `design` e `web-frontend` (declaradas como dependências), então instale os três pelo marketplace.
- Passos: direção de design, base de design (ui-ux-pro-max), direção de arte (taste-skill), tokens, página, revisão de UI e acessibilidade.
- Testado 3 vezes com uma padaria. A versão final gerou a página, rodou os scripts `search.py`, `draw.mjs`, `inspect.mjs` e `lint.mjs` e não fez chamadas de rede. O inspetor deixou 2 falhas e 4 avisos abertos; ninguém abriu a página num navegador.