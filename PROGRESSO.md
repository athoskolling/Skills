# Progresso e pedidos (salvo em 2026-10-27, ao chegar perto de 45% da janela de 5 horas)

Regra que você deu: ao chegar a 45% do uso da janela de 5 horas, salvar o progresso e o que foi pedido num markdown e parar de trabalhar por agora. Este arquivo é esse registro. Para retomar numa sessão nova, leia este arquivo e o `ROADMAP.md`.

## O que você pediu (em ordem)

1. Continuar a Fase 1 do ecossistema de skills. A pasta de trabalho é `Downloads\ai-skills-ecosystem-projeto\ai-skills-ecosystem`.
2. Só organizar as skills em pastas, sem complicar. Instalar depois no Claude Code, Cowork ou Codex.
3. Um commit no GitHub (repo `athoskolling/Skills`) a cada mudança, para você ver como está sendo organizado.
4. Registrar no roadmap que os times de skills vão continuar sendo melhorados.
5. Aprovou as Fases 1 e 3. Deixou o Cowork para depois.
6. Fazer todos os grupos, não só o MVP, e explicar de forma breve o que cada skill faz, como adicionar skills e como escolher só algumas por projeto.
7. Sem testar os grupos novos (só testar se falhar no uso).
8. Verificar duplicações no acervo e apagar a menos relevante.
9. Sem limite de quantidade por grupo; consultar o acervo todo e priorizar a melhor qualidade.
10. Melhorar frontend/design, porque nenhum grupo fazia landing page.
11. Trazer skills como `taste-skill` e `ui-ux-pro-max`.
12. Repositório fica **privado** (uso pessoal).
13. Esta regra de parar em 45% do uso.

## Estado atual (tudo no GitHub, exceto o último bloco abaixo)

- **19 grupos, 239 skills**; acervo de consulta com **646 skills** em `catalog/` (sem duplicados).
- Grupos testados no Claude Code: `software-dev`, `research-synthesis`, `design`, `presentations`. Os outros 15 não foram testados (por sua escolha), exceto o `landing-page`, testado 3 vezes.
- Fases: 0 e 1 aprovadas; 3 aprovada; 2 (Cowork) adiada; 4 (expansão) depende do seu uso real.
- Documentação: `GRUPOS.md` (o que cada grupo e skill faz), `GUIA.md` (instalar, escolher só algumas, adicionar mais), `catalog/LICENSES.md` (licenças).
- Ferramentas: `scripts/install.ps1` (instala com rollback; `-Skill` para parte do grupo), `scripts/add-skills.ps1` (adiciona skills do acervo a um grupo).

## Feito nesta última etapa

- Grupo `landing-page`: comando `/landing-page:build <briefing>` (depende de `design` e `web-frontend`). Usa `ui-ux-pro-max`, `taste-skill` (nome interno `design-taste-frontend`), `design-system`, `frontend-design`, `web-design-guidelines` e `accessibility`.
- `web-frontend` ganhou `taste-skill` (cópia completa do repositório original, porque a do acervo estava incompleta) e `ui-ux-pro-max` (externa, MIT, scripts revisados). A `impeccable` foi removida (cópia do acervo incompleta; a completa exige `npx` e um bundle de 553 KB sem revisão).
- `web-design-guidelines` agora usa regras fixas guardadas no plugin, em vez de baixar da internet a cada uso.
- Teste da landing page (padaria): os scripts `search.py`, `draw.mjs`, `inspect.mjs` e `lint.mjs` rodaram, sem rede. O inspetor deixou 2 falhas e 4 avisos abertos, e ninguém abriu a página num navegador.

## Pendências

1. **Landing page:** corrigir as 2 falhas e 4 avisos do inspetor do taste-skill e abrir a página no navegador. Os arquivos de teste estão em `%TEMP%\lp-eval3\`, que pode ser apagado pelo sistema; refaça com `/landing-page:build`.
2. **Cowork:** testar os zips quando você tiver acesso (`install.ps1 -Plugin all -Mode zip`).
3. **Fase 4:** usar os grupos em trabalho real e me dizer o que falhou.
4. **Licenças:** com o repo privado o risco é baixo; se for público ou compartilhado, revisar `catalog/LICENSES.md`.
5. **Sobreposições entre skills** de função parecida (por exemplo `api-design` e `api-designer`): decidir qual manter, se quiser.
6. **Skills com hooks:** a `planning-with-files` (grupo `agent-orchestration`) declara hooks que chamam scripts não copiados; deve falhar sem efeito, mas vale remover ou completar se for usar.
7. Alertas de rede, instalação e scripts de cada skill estão no `SOURCES.md` do grupo.

## Como retomar

1. Abrir uma sessão nova (`/clear`) e dizer: "leia o PROGRESSO.md e o ROADMAP.md e continue".
2. Para instalar: `/plugin marketplace add athoskolling/Skills` e `/plugin install <grupo>@ai-skills-ecosystem` (o repo é privado; precisa estar logado no GitHub).
