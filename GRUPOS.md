# Grupos de skills

14 grupos, 83 skills (o acervo completo tem 648; o resto fica em `catalog/` para consulta).
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
