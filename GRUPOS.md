# Grupos de skills

14 grupos, 86 skills (o acervo completo tem 648; o resto fica em `catalog/` para consulta).
Estado: os 4 primeiros foram testados no Claude Code. Os outros 10 **nÃ£o foram testados** (sÃ³ selecionados e passaram por uma varredura de padrÃµes de risco, listada no `SOURCES.md` de cada grupo).
Como usar, escolher sÃ³ algumas e adicionar mais: veja `GUIA.md`.

## Testados

### 1. software-dev: escrever e revisar cÃ³digo
- `implement`: implementa a partir de uma spec ou ticket, usando `tdd` e `code-review`.
- `tdd`: desenvolvimento guiado por testes (teste primeiro).
- `diagnosing-bugs`: acha a causa raiz de bug difÃ­cil antes de mexer no cÃ³digo.
- `code-review`: revisa o diff e aponta problemas.
- Comando: `/software-dev:dev-flow <tarefa>`

### 2. research-synthesis: pergunta atÃ© relatÃ³rio com fontes
- `research`: investiga em fontes primÃ¡rias e salva as notas.
- `scientific-thinking-scholar-evaluation`: avalia se as fontes sustentam cada afirmaÃ§Ã£o.
- `article-writing`: escreve o relatÃ³rio final com citaÃ§Ãµes.
- Comando: `/research-synthesis:report <pergunta>`

### 3. design: briefing atÃ© especificaÃ§Ã£o
- `frontend-design-direction`: transforma o briefing em direÃ§Ã£o de design.
- `design-system`: define tokens (cores, tipografia, espaÃ§amento) e componentes.
- `accessibility`: confere contra WCAG 2.2 AA.
- Comando: `/design:spec <briefing>`

### 4. presentations: conteÃºdo atÃ© slides
- `writing-beats`: organiza o conteÃºdo em sequÃªncia de ideias.
- `frontend-slides`: monta os slides num HTML Ãºnico.
- `writing-guidelines`: revisa o texto (regras fixas guardadas no plugin).
- Comando: `/presentations:deck <conteÃºdo>`

## NÃ£o testados

### 5. security-audit: seguranÃ§a de cÃ³digo
- `security-review`: checklist de seguranÃ§a ao mexer em autenticaÃ§Ã£o, entrada de usuÃ¡rio, segredos e APIs.
- `security-reviewer`: acha vulnerabilidades e gera relatÃ³rio com severidade.
- `secure-code-guardian`: guia para implementar autenticaÃ§Ã£o e evitar o OWASP Top 10.
- `audit-context-building`: entende o cÃ³digo antes de procurar bugs.
- `variant-analysis`: depois de achar um bug, procura outros iguais no cÃ³digo.
- `sharp-edges`: aponta APIs e configuraÃ§Ãµes que levam a erro de seguranÃ§a.
- `supply-chain-risk-auditor`: audita risco nas dependÃªncias.

### 6. qa-release: testes e verificaÃ§Ã£o antes de entregar
- `e2e-testing`: testes ponta a ponta com Playwright.
- `property-based-testing`: testes por propriedades (Hypothesis, fast-check etc.).
- `mutation-testing`: mede a qualidade dos testes com mutantes (precisa das ferramentas mewt/muton).
- `test-master`: estratÃ©gia geral de testes.
- `verification-before-completion`: obriga rodar a verificaÃ§Ã£o antes de dizer que terminou.
- `canary-watch`: monitora uma URL depois do deploy.
- `finishing-a-development-branch`: decide como integrar o trabalho (merge, PR, descarte).

### 7. devops-infra: infraestrutura e deploy
- `docker-patterns`: Docker e Compose, com seguranÃ§a.
- `kubernetes-patterns`: workloads, recursos, probes, RBAC.
- `terraform-engineer`: infraestrutura como cÃ³digo (AWS, Azure, GCP).
- `deployment-patterns`: CI/CD, health checks, rollback.
- `devops-engineer`: cria Dockerfiles, pipelines e manifests.
- `monitoring-expert`: logs estruturados, Prometheus/Grafana.
- `sre-engineer`: SLOs, orÃ§amento de erro, resposta a incidentes.

### 8. database: bancos de dados
- `database-migrations`: migraÃ§Ãµes seguras e reversÃ­veis.
- `database-optimizer`: otimiza consultas (PostgreSQL e MySQL).
- `postgres-patterns`: modelagem, Ã­ndices e seguranÃ§a no PostgreSQL.
- `mysql-patterns`: o mesmo para MySQL/MariaDB.
- `sql-pro`: escreve e otimiza SQL, desenha esquemas.
- `redis-patterns`: cache, locks, rate limiting, pub/sub.
- `prisma-patterns`: Prisma ORM em TypeScript.

### 9. apis-mcp: APIs e servidores MCP
- `api-design`: padrÃµes REST (nomes, status, paginaÃ§Ã£o, erros).
- `api-designer`: desenha REST/GraphQL e especificaÃ§Ãµes OpenAPI.
- `graphql-architect`: esquemas GraphQL e Apollo Federation.
- `fastapi-patterns`: boas prÃ¡ticas de FastAPI.
- `mcp-builder`: guia oficial para criar servidores MCP.
- `mcp-developer`: constrÃ³i e depura servidores e clientes MCP.
- `mcp-server-patterns`: servidores MCP com Node/TypeScript.
- `claude-api`: usar a API da Claude e o SDK (modelos, streaming, ferramentas).

### 10. data-ai: dados, prompts e ML
- `prompt-engineer`: escreve, refatora e avalia prompts.
- `prompt-optimizer`: analisa um rascunho de prompt e sugere melhorias (focada no ecossistema ECC).
- `prompt-caching-strategy`: usa cache de prompt para economizar custo.
- `cost-aware-llm-pipeline`: roteamento por modelo e controle de custo de LLM.
- `rag-architect`: sistemas RAG (chunking, embeddings, busca).
- `ml-pipeline`: pipelines de ML com rastreio de experimentos.
- `pandas-pro`: anÃ¡lise de dados com pandas.
- `pytorch-patterns`: treino de modelos em PyTorch.

### 11. docs-writing: documentaÃ§Ã£o e escrita
- `doc-coauthoring`: escrever documentos em etapas, com o usuÃ¡rio.
- `code-documenter`: docstrings, OpenAPI e documentaÃ§Ã£o tÃ©cnica.
- `docs-governance`: auditoria sÃ³ de leitura da documentaÃ§Ã£o do projeto.
- `brand-voice`: extrai o estilo de escrita de textos reais.
- `writing-fragments`: junta fragmentos soltos, sem estrutura ainda.
- `writing-shape`: transforma o material em artigo, parÃ¡grafo a parÃ¡grafo.
- `internal-comms`: comunicados internos nos formatos da empresa.
- `seo`: auditoria e melhorias de SEO.

### 12. agent-orchestration: planejar e dividir trabalho
- `brainstorming`: explora a ideia antes de criar algo.
- `grill-me`: entrevista dura para fortalecer um plano.
- `to-spec`: transforma a conversa em especificaÃ§Ã£o.
- `to-tickets`: quebra o plano em tickets com dependÃªncias.
- `writing-plans`: escreve o plano de implementaÃ§Ã£o antes de codar.
- `executing-plans`: executa um plano passo a passo.
- `subagent-driven-development`: executa o plano com subagentes.
- `dispatching-parallel-agents`: roda tarefas independentes em paralelo.
- `planning-with-files`: planejamento persistente em arquivos (os scripts auxiliares dele nÃ£o foram copiados).
- `handoff`: resume a conversa para outro agente continuar.

### 13. learning: aprender e ensinar
- `learn`: registra aprendizados do projeto.
- `teach`: ensina um conceito dentro do projeto.
- `socratic-tutors`: ensina por perguntas, sem dar a resposta direta.
- `scaffold-exercises`: monta pastas de exercÃ­cios com problemas e soluÃ§Ãµes.
- `codebase-onboarding`: guia de entrada para um cÃ³digo desconhecido.

### 14. business-ops: anÃ¡lise e operaÃ§Ã£o
- `competitive-platform-analysis`: mapeia e pontua concorrentes.
- `competitive-report-structure`: monta o relatÃ³rio competitivo.
- `project-flow-ops`: triagem de issues e PRs (GitHub e Linear).
- `github-ops`: operaÃ§Ãµes no repositÃ³rio GitHub.
- `knowledge-ops`: gestÃ£o e busca em base de conhecimento.
- `growth-log`: registra padrÃµes reutilizÃ¡veis do trabalho concluÃ­do.

## Ficaram de fora de propÃ³sito
Skills que enviam mensagens, fazem cobranÃ§a ou prospecÃ§Ã£o (risco CrÃ­tico), as que dependem de fuzzers e scanners externos, as obsoletas (`continuous-learning`) e as de nicho (homelab, energia, logÃ­stica). Continuam em `catalog/`.

