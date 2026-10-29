# Grupos de skills

15 plugins (software-dev-linguagens é subgrupo de software-dev), 205 skills. O acervo completo tem 646 skills em `catalog/`, para consulta; o resto fica lá.

Como usar, escolher só algumas e adicionar mais: veja `GUIA.md`. Decisões da reorganização em `DECISIONS.md`.

## Reorganização (2026-10-28)

- Excluídos: `engineering-practices` (exceto architecture-decision-records e code-tour, que foram para software-dev), o restante de `languages` (16 skills; as 6 mais usadas foram para software-dev-linguagens).
- Juntados: `learning` em `docs-writing`; `apis-mcp` e `devops-infra` em `infra`; `web-frontend` virou `frontend`, com `landing-page` (agora `/frontend:landing-page`) e com design-system e accessibility, que saíram de `design`.
- Enxugados: `database` (de 16 para 9 skills, uma por banco) e `agent-orchestration` (de 32 para 24).
- Substituições nas referências: skills removidas que tinham equivalente foram trocadas nos textos. Ex.: `context-save` e `context-restore` → `handoff`; `plan-ceo-review` e `plan-design-review` → `plan-eng-review`; `systematic-debugging` e `debugging-wizard` → `diagnosing-bugs`.
- Adicionados do acervo: deep-research (research-synthesis), agent-introspection-debugging (software-dev), impeccable e canvas-design (design).

## software-dev

Desenvolvimento: escrever, revisar e depurar código. Testado. *Estado: Testado.*

- `agent-introspection-debugging`: Structured self-debugging for AI agent failures: capture, diagnosis, contained recovery and an introspection report.
- `architecture-decision-records`: Capture architectural decisions as numbered ADR markdown files in docs/adr/ with context, alternatives considered, consequences...
- `code-review`: revisa o diff e aponta problemas.
- `code-tour`: Create CodeTour `.tour` files — persona-targeted, step-by-step walkthroughs with real file and line anchors.
- `diagnosing-bugs`: acha a causa raiz de bug difícil antes de mexer no código.
- `implement`: implementa a partir de uma spec ou ticket, usando `tdd` e `code-review`.
- `tdd`: desenvolvimento guiado por testes (teste primeiro).
- `orch-fix-defect`: Fixes a bug by reproducing it as a failing regression test, fixing to green, reviewing and committing. Needs adaptation: delegates to ECC agents not in this repo.

## software-dev-linguagens

Subgrupo de software-dev: skills por linguagem e framework. Plugin separado. *Estado: Não testado.*

- `golang-pro`: Implements concurrent Go patterns using goroutines and channels, designs and builds microservices with gRPC or REST, optimizes ...
- `java-architect`: Use when building, configuring, or debugging enterprise Java applications with Spring Boot 3.x, microservices, or reactive prog...
- `javascript-pro`: Writes, debugs, and refactors JavaScript code using modern ES2023+ features, async/await patterns, ESM module systems, and Node...
- `python-pro`: Use when building Python 3.11+ applications requiring type safety, async programming, or robust error handling.
- `rust-engineer`: Writes, reviews, and debugs idiomatic Rust code with memory safety and zero-cost abstractions.
- `typescript-pro`: Implements advanced TypeScript type systems, creates custom type guards, utility types, and branded types, and configures tRPC ...
- `springboot-tdd`: TDD for Spring Boot with JUnit 5, Mockito, MockMvc, Testcontainers and JaCoCo.

## design

Design visual: direção, crítica (impeccable) e arte visual (canvas-design). *Estado: Testado (sem design-system e accessibility, que foram para frontend).*

- `canvas-design`: Visual art as .png and .pdf (posters, static pieces) from a design philosophy. Closest to Photoshop/Illustrator in the catalog; no Photoshop or Illustrator skill exists there.
- `frontend-design-direction`: transforma o briefing em direção de design.
- `impeccable`: Critique, audit and polish of frontend interfaces. Catalog copy is SKILL.md only; the full version needs npx and was not reviewed (see PROGRESSO.md).

## frontend

Front-end e landing page: React, Next.js, Vue, tokens de design, acessibilidade e o comando de landing page. *Estado: Não testado; o comando landing-page foi testado 3 vezes antes da junção.*

- `accessibility`: confere contra WCAG 2.2 AA.
- `angular-architect`: Generates Angular 17+ standalone components, configures advanced routing with lazy loading and guards, implements NgRx state ma...
- `composition-patterns`: (veja o SKILL.md)
- `design-system`: define tokens (cores, tipografia, espaçamento) e componentes.
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
- `taste-skill`: Visual style and art direction for front-end (internal name design-taste-frontend).
- `theme-factory`: Toolkit for styling artifacts with a theme.
- `ui-ux-pro-max`: base local de design (estilos, paletas, pares de fontes, regras de UX, gráficos, 22 stacks) consultada por um script Python. Repositório original `nextlevelbuilder/ui-ux-pro-max-skill` (MIT). Não está no acervo; foi adicionada à mão.
- `vue-expert`: Builds Vue 3 components with Composition API patterns, configures Nuxt 3 SSR/SSG projects, sets up Pinia stores, scaffolds Quas...
- `web-design-guidelines`: Review UI code for Web Interface Guidelines compliance.

- `/frontend:landing-page <briefing>`: briefing até uma landing page pronta em um arquivo HTML. Usa skills de `design` (frontend-design-direction), declarado como dependência.

## research-synthesis

Pergunta até relatório com fontes, com deep-research. *Estado: Testado.*

- `article-writing`: escreve o relatório final com citações.
- `deep-research`: Cited research reports from multiple web sources. Needs the firecrawl and exa MCP tools (external servers).
- `research`: investiga em fontes primárias e salva as notas.
- `scientific-thinking-scholar-evaluation`: avalia se as fontes sustentam cada afirmação.

## presentations

Conteúdo até estrutura de slides. *Estado: Testado.*

- `frontend-slides`: monta os slides num HTML único.
- `writing-beats`: organiza o conteúdo em sequência de ideias.
- `writing-guidelines`: revisa o texto (regras fixas guardadas no plugin).

## docs-writing

Documentação, escrita, marca, SEO e aprendizado (ensinar e aprender). *Estado: Não testado.*

- `academy-guide`: (veja o SKILL.md)
- `brand-discovery`: Run a structured, resumable multi-session brand identity interview across 8 modules (purpose, positioning, audience, personalit...
- `brand-voice`: extrai o estilo de escrita de textos reais.
- `code-documenter`: docstrings, OpenAPI e documentação técnica.
- `codebase-onboarding`: guia de entrada para um código desconhecido.
- `content-engine`: Create platform-native content systems for X, LinkedIn, TikTok, YouTube, newsletters, and repurposed multi-platform campaigns.
- `discernment-nudge`: (veja o SKILL.md)
- `doc-coauthoring`: escrever documentos em etapas, com o usuário.
- `docs-governance`: auditoria só de leitura da documentação do projeto.
- `document-release`: Release documentation audit.
- `documentation-lookup`: Use up-to-date library and framework docs via Context7 MCP instead of training data.
- `i18n-sync`: Translate and synchronize application JSON locale files using source-key usage, project terminology, and focused validation.
- `internal-comms`: comunicados internos nos formatos da empresa.
- `learn`: registra aprendizados do projeto.
- `living-docs-governance`: Keep a long-lived project's documentation from rotting by assigning existing project docs clear constitution, map, status, and ...
- `scaffold-exercises`: monta pastas de exercícios com problemas e soluções.
- `seo`: auditoria e melhorias de SEO.
- `socratic-tutors`: ensina por perguntas, sem dar a resposta direta.
- `teach`: ensina um conceito dentro do projeto.
- `writing-for-agents`: Writing documents for agents.
- `writing-fragments`: junta fragmentos soltos, sem estrutura ainda.
- `writing-shape`: transforma o material em artigo, parágrafo a parágrafo.
- `make-pdf`: Turns Markdown into a publication-quality PDF. No external service.

## business-ops

Análise e operação de negócio: mercado, concorrência, contratos, marketing. *Estado: Não testado.*

- `benchmark-methodology`: Score a scoped competitor set into comparable profile cards: nine weighted dimensions (positioning, voice, visual craft, offer ...
- `competitive-platform-analysis`: mapeia e pontua concorrentes.
- `competitive-report-structure`: monta o relatório competitivo.
- `contract-first`: Coordinate frontend/backend or service-to-service work through one authoritative machine-checkable contract (OpenAPI, AsyncAPI,...
- `github-ops`: operações no repositório GitHub.
- `google-workspace-ops`: Operate across Google Drive, Docs, Sheets, and Slides as one workflow surface for plans, trackers, decks, and shared documents.
- `growth-log`: registra padrões reutilizáveis do trabalho concluído.
- `investor-materials`: Create and update pitch decks, one-pagers, investor memos, accelerator applications, financial models, and fundraising materials.
- `knowledge-ops`: gestão e busca em base de conhecimento.
- `market-research`: Conduct market research, competitive analysis, investor due diligence, and industry intelligence with source attribution and de...
- `marketing-campaign`: End-to-end marketing campaign planning and execution.
- `master-agreement-generator`: Generate review drafts of counterparty master agreements from one template plus a JSON spec, with role-selected clauses and a S...
- `project-flow-ops`: triagem de issues e PRs (GitHub e Linear).

## security-audit

Segurança de código e dependências. *Estado: Não testado.*

- `agent-security`: Use when reviewing or writing LLM, RAG, MCP, tool, or agent code for OWASP-aligned security issues; triggered by "owasp my code...
- `agent-security-hardening`: Security hardening guidance for AI agent frameworks that process untrusted content, invoke tools, write workspace files, manage...
- `agentic-actions-auditor`: Audits GitHub Actions workflows for security vulnerabilities in AI agent integrations including Claude Code Action, Gemini CLI,...
- `audit-context-building`: entende o código antes de procurar bugs.
- `audit-prep-assistant`: Prepares codebases for security review using Trail of Bits' checklist.
- `cso`: Security audit: supported static findings; qualified profiles add reproduction and repair candidates.
- `differential-review`: Performs security-focused differential review of code changes.
- `fp-check`: Systematically verifies suspected security bugs to eliminate false positives, producing a TRUE POSITIVE or FALSE POSITIVE verdi...
- `prove-patch`: Use when a local security patch commit needs independent scoped and three-arm proof.
- `repo-scan`: Bootstrap pointer that installs the external repo-scan skill from a pinned, reviewable commit.
- `secure-code-guardian`: guia para implementar autenticação e evitar o OWASP Top 10.
- `secure-workflow-guide`: Guides through Trail of Bits' 5-step secure development workflow.
- `security-review`: checklist de segurança ao mexer em autenticação, entrada de usuário, segredos e APIs.
- `security-reviewer`: acha vulnerabilidades e gera relatório com severidade.
- `security-scan`: Scan your Claude Code configuration (.claude/ directory) for security vulnerabilities, misconfigurations, and injection risks u...
- `sharp-edges`: aponta APIs e configurações que levam a erro de segurança.
- `supply-chain-risk-auditor`: audita risco nas dependências.
- `trailmark-finding-triage`: Performs graph-assisted triage of a single security finding, SARIF result, weAudit annotation, suspicious function, or report e...
- `variant-analysis`: depois de achar um bug, procura outros iguais no código.
- `vulnerability-triage-brocards`: (veja o SKILL.md)

## qa-release

Testes, E2E, regressão e verificação antes de entregar. *Estado: Não testado.*

- `ai-regression-testing`: Regression testing strategies for AI-assisted development.
- `benchmark`: Web performance regression detection.
- `browser-qa`: Run automated post-deploy UI verification with a browser automation MCP (claude-in-chrome, Playwright, or Puppeteer): console-e...
- `canary-watch`: monitora uma URL depois do deploy.
- `chaos-engineer`: Designs chaos experiments, creates failure injection frameworks, and facilitates game day exercises for distributed systems —...
- `e2e-testing`: testes ponta a ponta com Playwright.
- `finishing-a-development-branch`: decide como integrar o trabalho (merge, PR, descarte).
- `hunt-regressions`: Use when discovering possible regressions from a pinned change and its callers before reproduction.
- `mutation-testing`: mede a qualidade dos testes com mutantes (precisa das ferramentas mewt/muton).
- `playwright-expert`: Use when writing E2E tests with Playwright, setting up test infrastructure, or debugging flaky browser tests.
- `property-based-testing`: testes por propriedades (Hypothesis, fast-check etc.).
- `qa-only`: Report browser/API/CLI/job/worker/webhook bugs.
- `receiving-code-review`: Use when receiving code review feedback, before implementing suggestions, especially if feedback seems unclear or technically q...
- `requesting-code-review`: Use when completing tasks, implementing major features, or before merging to verify work meets requirements
- `review-pr`: Reviews the current branch's changes against its base branch as a pull request: correctness of new and modified code, test cove...
- `test-master`: estratégia geral de testes.
- `validate-bug`: Use when a bug PoC package needs an independent rerun and judgment before patching.
- `verification-before-completion`: obriga rodar a verificação antes de dizer que terminou.
- `webapp-testing`: Toolkit for interacting with and testing local web applications using Playwright.

## data-ai

Dados, prompts, RAG e ML. *Estado: Não testado.*

- `cost-aware-llm-pipeline`: roteamento por modelo e controle de custo de LLM.
- `dashboard-builder`: Build monitoring dashboards that answer real operator questions for Grafana, SigNoz, and similar platforms.
- `eval-harness`: Eval-driven development (EDD) framework for AI coding sessions — define capability and regression evals before coding, grade ...
- `fine-tuning-expert`: Use when fine-tuning LLMs, training custom models, or adapting foundation models for specific tasks.
- `goal-prompt`: Drafts copy-paste-ready /goal commands for goal mode in Claude Code and Codex.
- `iterative-retrieval`: Pattern for progressively refining context retrieval to solve the subagent context problem.
- `ml-pipeline`: pipelines de ML com rastreio de experimentos.
- `mle-workflow`: Production machine-learning engineering workflow for data contracts, reproducible training, model evaluation, deployment, monit...
- `pandas-pro`: análise de dados com pandas.
- `prompt-caching-strategy`: usa cache de prompt para economizar custo.
- `prompt-engineer`: escreve, refatora e avalia prompts.
- `prompt-optimizer`: analisa um rascunho de prompt e sugere melhorias (focada no ecossistema ECC).
- `pytorch-patterns`: treino de modelos em PyTorch.
- `rag-architect`: sistemas RAG (chunking, embeddings, busca).
- `regex-vs-llm-structured-text`: Decision framework for parsing structured text (quizzes, forms, invoices, receipts, tables) with a hybrid regex-first pipeline ...
- `spark-engineer`: Use when writing Spark jobs, debugging performance issues, or configuring cluster settings for Apache Spark applications, distr...
- `token-budget-advisor`: Offer a choice of response depth (25%/50%/75%/100%) with token estimates before answering, then answer at that level.
- `agent-self-evaluation`: The agent rates its own output after a task on accuracy, completeness, clarity, actionability and conciseness.
- `ml-adoption-playbook`: Methodology for adding ML algorithms to an existing non-ML codebase: problem framing, data readiness, decoupling, baselines.

## database

Bancos de dados: MongoDB, Postgres, MySQL, migrações, Redis, Prisma, ClickHouse, SQL. *Estado: Não testado.*

- `clickhouse-io`: ClickHouse database patterns, query optimization, analytics, and data engineering best practices for high-performance analytica...
- `database-migrations`: migrações seguras e reversíveis.
- `database-optimizer`: otimiza consultas (PostgreSQL e MySQL).
- `mongodb-schema-design`: MongoDB schema design patterns and anti-patterns.
- `mysql`: Plan and review MySQL/InnoDB schema, indexing, query tuning, transactions, and operations.
- `postgres-pro`: Use when optimizing PostgreSQL queries, configuring replication, or implementing advanced database features.
- `prisma-patterns`: Prisma ORM em TypeScript.
- `redis-patterns`: cache, locks, rate limiting, pub/sub.
- `sql-pro`: escreve e otimiza SQL, desenha esquemas.

## mobile

Android, iOS, Flutter e React Native. *Estado: Não testado.*

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

## agent-orchestration

Planejar, dividir e passar trabalho entre agentes. *Estado: Não testado.*

- `agentic-engineering`: Operate as an agentic engineer using eval-first execution, decomposition, and cost-aware model routing.
- `blueprint`: Turn a one-line objective into a step-by-step construction plan for multi-session, multi-agent engineering projects: one-PR-siz...
- `brainstorming`: explora a ideia antes de criar algo.
- `context-budget`: Routes live context checks to the native Codex or Claude Code meter without scanning files, and performs a bounded static compo...
- `council`: Convene a four-voice council for ambiguous decisions, tradeoffs, and go/no-go calls.
- `executing-plans`: executa um plano passo a passo.
- `grill-me`: entrevista dura para fortalecer um plano.
- `grilling`: Grill the user relentlessly about a plan, decision, or idea.
- `handoff`: resume a conversa para outro agente continuar.
- `plan-eng-review`: Eng manager-mode plan review.
- `planning-with-files`: planejamento persistente em arquivos (os scripts auxiliares dele não foram copiados).
- `prototype`: Build a throwaway prototype to answer a design question.
- `search-first`: Research-before-coding workflow: search npm/PyPI, MCP servers, skills, and GitHub for existing tools before writing custom code...
- `skill-creator`: Create new skills, modify and improve existing skills, and measure skill performance.
- `strategic-compact`: Suggests manual context compaction at logical intervals to preserve context through task phases rather than arbitrary auto-comp...
- `subagent-driven-development`: executa o plano com subagentes.
- `to-questionnaire`: Turn a decision you can't fully answer into a questionnaire for someone else to fill in.
- `to-tickets`: quebra o plano em tickets com dependências.
- `triage`: Move issues and external PRs through a state machine of triage roles, categorise, verify, grill if needed, and write agent-read...
- `using-git-worktrees`: Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures a...
- `verification-loop`: Run a six-phase verification of a Claude Code session's work — build, type check, lint, tests with coverage, security grep, a...
- `wayfinder`: Plan a huge chunk of work (more than one agent session can hold) as a shared map of decision tickets on your issue tracker, and...
- `wizard`: Generate an interactive bash wizard that walks a human through steps only they can perform.
- `writing-plans`: escreve o plano de implementação antes de codar.

## infra

Infraestrutura e serviços: Docker, Kubernetes, Terraform, CI/CD, monitoramento, APIs e servidores MCP. *Estado: Não testado.*

- `api-connector-builder`: Build a new API connector or provider by matching the target repo's existing integration pattern exactly.
- `api-design`: padrões REST (nomes, status, paginação, erros).
- `api-designer`: desenha REST/GraphQL e especificações OpenAPI.
- `claude-api`: usar a API da Claude e o SDK (modelos, streaming, ferramentas).
- `cloud-architect`: Designs cloud architectures, creates migration plans, generates cost optimization recommendations, and produces disaster recove...
- `deploy-to-vercel`: Deploy applications and websites to Vercel.
- `deployment-patterns`: CI/CD, health checks, rollback.
- `devcontainer-setup`: Creates devcontainers with Claude Code, language-specific tooling (Python/Node/Rust/Go), and persistent volumes.
- `devops-engineer`: cria Dockerfiles, pipelines e manifests.
- `docker-patterns`: Docker e Compose, com segurança.
- `fastapi-expert`: Use when building high-performance async Python APIs with FastAPI and Pydantic V2.
- `fastapi-patterns`: boas práticas de FastAPI.
- `graphql-architect`: esquemas GraphQL e Apollo Federation.
- `kubernetes-patterns`: workloads, recursos, probes, RBAC.
- `kubernetes-specialist`: Use when deploying or managing Kubernetes workloads.
- `mcp-builder`: guia oficial para criar servidores MCP.
- `mcp-cli`: Use MCP servers on-demand via the mcp CLI tool - discover tools, resources, and prompts without polluting context with pre-load...
- `mcp-dependency-review`: Statically review MCP configuration for mutable package references before approval or CI, without executing discovered MCP serv...
- `mcp-developer`: constrói e depura servidores e clientes MCP.
- `mcp-server-patterns`: servidores MCP com Node/TypeScript.
- `monitoring-expert`: logs estruturados, Prometheus/Grafana.
- `sre-engineer`: SLOs, orçamento de erro, resposta a incidentes.
- `terraform-engineer`: infraestrutura como código (AWS, Azure, GCP).
- `api-discipline`: REST API design review: naming, versioning, pagination, status codes, PUT vs PATCH, OpenAPI linting. MIT.

## Ficaram de fora de propósito
Skills que enviam mensagens, fazem cobrança ou prospecção (risco Crítico), as que dependem de fuzzers e scanners externos, as obsoletas (`continuous-learning`) e as de nicho (homelab, energia, logística). Continuam em `catalog/`.
