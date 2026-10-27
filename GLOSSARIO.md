# Glossário

Termos usados no projeto, em português, para consulta quando um documento estiver em inglês.

- **Skill:** conjunto de instruções em um arquivo `SKILL.md` que ensina o Claude a executar uma tarefa específica. Carrega sob demanda, quando a descrição combina com o pedido.
- **Plugin:** pacote que reúne skills, comandos, agentes, hooks e servidores MCP para distribuição. Um plugin tem uma versão própria.
- **Workflow:** sequência de etapas que coordena várias skills ou agentes para atingir um resultado.
- **Agente:** função especializada que pode ser delegada uma tarefa. Usado somente quando há justificativa.
- **Hook:** script executado automaticamente em pontos definidos do ciclo de trabalho (por exemplo, antes de uma ferramenta ser usada).
- **MCP (Model Context Protocol):** protocolo para conectar o Claude a ferramentas e serviços externos.
- **Marketplace:** catálogo de plugins. Pode ser oficial, de uma organização ou um repositório Git.
- **Candidate:** recurso descoberto ou em experimentação, ainda não revisado.
- **Reviewed:** recurso cujas instruções, referências e estrutura foram revisadas.
- **Tested:** recurso que passou por casos de teste representativos.
- **Production-ready:** recurso que cumpre os critérios de qualidade, segurança, compatibilidade e documentação.
- **Sandbox:** ambiente isolado e descartável usado para testar um recurso sem afetar o sistema principal.
- **Rollback:** reversão de uma alteração para a versão anterior, preservada no Git.
- **Semver:** convenção de versões no formato MAJOR.MINOR.PATCH. Mudança de MAJOR indica quebra de compatibilidade.
- **Changelog:** registro das mudanças entre versões.
- **Tag (Git):** marcação fixa de um commit, usada para identificar uma versão.
- **Adaptador:** componente que converte um recurso para o formato exigido por outra plataforma.
- **Compatibilidade:** capacidade de um recurso funcionar em uma plataforma específica. Só se declara após teste.
- **Risco Baixo, Médio, Alto, Crítico:** classes que determinam quais ações são automáticas e quais exigem aprovação.
- **Estimativa de custo:** cálculo do gasto esperado de um serviço externo, apresentado antes da aprovação.
- **Pontuação ponderada:** nota de uma oportunidade, calculada a partir de critérios com peso.
- **Prompt mestre:** instrução única e completa que coordena a construção do ecossistema. Só será gerado após autorização.
