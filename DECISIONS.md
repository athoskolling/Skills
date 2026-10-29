# Decisões do projeto

Registro das decisões firmes. Cada item indica a rodada em que foi definido.

## Etapas 1 a 9 (linha de base)

Ver a especificação de contexto fornecida pelo usuário. Resumo dos pontos que orientam as decisões seguintes:
- Plataformas: Claude Code e Cowork.
- Autonomia máxima dentro de limites de segurança e aprovação.
- Domínio → Departamento → Especialidade → Skill/Workflow, com hierarquia flexível.
- Granularidade híbrida; qualidade por níveis; monorepo; Git como base de versionamento.
- MVP com quatro domínios-piloto: desenvolvimento de software, pesquisa e síntese, design e apresentações.

## Rodada 1 (risco, qualidade, escopo do MVP)

- **Risco e permissões:** permissões escalonadas. Baixo é automático. Médio é automático somente em sandbox. Alto e Crítico exigem aprovação.
- **Níveis de qualidade:** evidência objetiva por nível (Candidate, Reviewed, Tested, Production-ready).
- **Escopo do MVP:** 2 a 4 skills por domínio, com um workflow ponta a ponta em cada domínio-piloto, validado nas duas plataformas.

## Rodada 2 (compatibilidade)

- **Formato:** plugin único, no formato do Claude Code, também instalável no Cowork.
- **Scripts:** sem `bin/`. Scripts são chamados por hooks ou comandos com `${CLAUDE_PLUGIN_ROOT}`.
- **Testes:** cada recurso é testado no Claude Code e no Cowork antes de receber o status de compatível.
- **Distribuição:** repositório Git próprio, usado como marketplace nas duas plataformas.

## Rodada 3 (custos, continuidade, versionamento)

- **Custos:** preferencialmente gratuito. Qualquer custo externo deve ser estimado e calculado antes de ser aceito.
- **Continuidade:** arquivos versionados no Git (este arquivo, PROJECT_CONTEXT.md, ROADMAP.md, ARCHITECTURE.md).
- **Versionamento:** semver por plugin, com changelog e tag Git.

## Rodada 4 (custo, idioma, atualização)

- **Custo externo:** estimativa e aprovação. Antes de qualquer gasto, o sistema mostra a estimativa em valor e uso, e o usuário aprova ou recusa.
- **Idioma:** artefatos podem ser todos em inglês. Para dúvidas, haverá um GLOSSARIO.md e um FAQ em português.
- **Atualizações de dependências e de terceiros:** manual, com teste em sandbox. Só é aplicada após aprovação do usuário.
- **Privacidade:** mínimo necessário. Registrar apenas métricas operacionais (testes, status, tempo, erros). Nunca conteúdo pessoal ou sensível.

## Rodada 5 (pontuação, aceite do MVP, expansão)

- **Pontuação:** escala de 1 a 5, pesos iguais para frequência, impacto, lacuna, economia de tempo, custo, risco e reuso.
- **Aceite do MVP:** um fluxo completo por domínio-piloto (instalação, execução, revisão e rollback), validado no Claude Code e no Cowork.
- **Expansão:** um domínio só avança quando todas as suas skills passam em pelo menos 3 casos de teste e há um uso real registrado sem intervenção corretiva grande.

## Rodada 6 (montagem de times)

- **Times por tipo de tarefa:** mapa fixo, um time-padrão por tipo de tarefa, definido e aprovado pelo usuário. Seleção dinâmica e times aprendidos com resultados ficam para depois do MVP.

## Rodada 7 (economia de contexto)

- **Armazenamento do acervo:** skills brutas em `catalog/skills-catalog.zip`, com o índice em `catalog/index.csv`. O agente não extrai o zip inteiro. Só `.claude/skills/` recebe skills aprovadas.
- **Uma fase por sessão.** Registro de estado em `ROADMAP.md` ao fim de cada fase.

## Concluído nesta rodada

- GLOSSARIO.md criado em português (termos do projeto).

## Pendências

- Revisão final das decisões e autorização para gerar o prompt mestre definitivo.
- Privacidade e retenção (item 9).
- Aceitação do MVP (item 10).
- Validação dos domínios-piloto (item 12).

## Verificado nas fontes oficiais

- Claude Code: plugins com skills, comandos, agentes, hooks, MCP e LSP; `plugin.json` opcional; campo `version` fixa a versão; `claude plugin validate`. Fonte: https://code.claude.com/docs/en/plugins-reference
- Cowork: plugins instaláveis a partir de marketplace, repositório Git ou arquivo; plugins com `bin/` não são instalados no claude.ai e no Cowork. Fonte: https://claude.com/docs/cowork/guide/plugins.md

Nada disso foi testado na prática ainda.

## Rodada 8 (exceção à ordem das fases, 2026-10-27)

- **Fase 2 (Cowork) adiada.** O usuário não tem acesso ao Cowork agora. A Fase 3 pode começar sem a Fase 2 aprovada (exceção à seção 13 do prompt mestre, autorizada pelo usuário: "continuar e depois testar qualquer coisa no cowork").
- **Regra durante a exceção:** nenhum plugin é marcado como compatível com o Cowork nem sobe de nível para Production-ready. Tudo fica "Cowork: não verificado".
- **Pendência:** quando o Cowork estiver disponível, instalar os zips (`scripts/install.ps1 -Mode zip`), rodar o workflow de cada plugin e registrar o resultado.

## Rodada 9 (reorganização dos grupos, 2026-10-28)

- **Quantidade:** de 19 grupos para 15 plugins. `software-dev-linguagens` é subgrupo de `software-dev`, mas em plugin separado.
- **Excluídos:** `engineering-practices` (com architecture-decision-records e code-tour indo para `software-dev`) e o restante de `languages`.
- **Juntados:** `learning` em `docs-writing`; `apis-mcp` e `devops-infra` em `infra`; `web-frontend` virou `frontend`, com `landing-page` (comando `/frontend:landing-page`).
- **Mudou de grupo:** design-system e accessibility saíram de `design` para `frontend`. `design` ficou com frontend-design-direction, impeccable e canvas-design, pois serve para outras ferramentas visuais além de web.
- **Enxugados:** `database` (uma skill por banco) e `agent-orchestration` (uma por tema: grilling + grill-me, plan-eng-review + writing-plans, handoff, subagent-driven-development, skill-creator).
- **Referências:** skills removidas com equivalente foram trocadas nos textos. Nomes sem equivalente ficaram como estavam.
- **Acrescentados do acervo:** deep-research (research-synthesis, depende de MCP firecrawl e exa), agent-introspection-debugging (software-dev), impeccable (design, só SKILL.md) e canvas-design (design).
- **Escopo:** só saíram de `plugins/`. O `catalog/` continua com todas as skills.

## Rodada 10 (skills do skills.sh e do catálogo, 2026-10-29)

- **Fonte:** skills.sh não resolve nesta sessão (DNS). A busca foi feita no catálogo local e nos repositórios de origem.
- **Adicionadas:** make-pdf (docs-writing), springboot-tdd (software-dev-linguagens), orch-fix-defect (software-dev, precisa adaptar), agent-self-evaluation e ml-adoption-playbook (data-ai), api-discipline (infra). Todas MIT.
- **Pendente de confirmação de licença:** docx, pdf, xlsx e pptx da Anthropic (source-available).
- **Pendente de sua decisão:** investigate (gstack). Depende de helpers do gstack que não estão no repositório e envia consultas sanitizadas para aside.com.
- **Descartadas:** ito-training e ito-compute (serviço externo), exa-search (MCP externo), postgres (licença não verificada, sobrepõe postgres-pro).

