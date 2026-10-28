# Guia de uso

## Como o repositório se organiza

- `plugins/<grupo>/skills/<skill>/SKILL.md`: cada grupo é uma pasta, cada skill uma subpasta.
- `catalog/skills-catalog.zip` e `catalog/index.csv`: o acervo completo (646 skills) para consulta.
- `GRUPOS.md`: o que cada grupo e cada skill faz.
- `scripts/install.ps1` instala. `scripts/add-skills.ps1` adiciona skills a um grupo.

## Instalar

Sempre começa em simulação. Nada é escrito sem `-Apply`, e `-Rollback` desfaz.

```powershell
.\scripts\install.ps1 -List                                              # lista grupos e skills
.\scripts\install.ps1 -Plugin database -Path C:\meu-projeto\.claude\skills            # simula
.\scripts\install.ps1 -Plugin database -Path C:\meu-projeto\.claude\skills -Apply     # instala
.\scripts\install.ps1 -Plugin database -Path C:\meu-projeto\.claude\skills -Rollback -Apply   # desfaz
.\scripts\install.ps1 -Plugin all -Path C:\meu-projeto\.claude\skills -Apply          # todos os grupos
```

Pelo GitHub, o plugin entra inteiro: `/plugin marketplace add athoskolling/Skills` e depois `/plugin install <grupo>@ai-skills-ecosystem`.

## Escolher só algumas skills num projeto

Use `-Skill` com os nomes separados por vírgula:

```powershell
.\scripts\install.ps1 -Plugin software-dev -Skill tdd,code-review -Path C:\meu-projeto\.claude\skills -Apply
```

Dá para misturar grupos rodando o comando de novo com outro `-Plugin` e outro `-Skill`. O `-Rollback` vale por grupo.

Para o Codex ou outra ferramenta, aponte `-Path` para a pasta de skills dela (não testado).

## Adicionar mais skills a um grupo

1. Procure no índice: `Import-Csv catalog\index.csv | ? description -match 'palavra' | select skill,resource,department`
2. Adicione:

```powershell
.\scripts\add-skills.ps1 -Plugin database -Skills mongodb-schema-design,clickhouse-io
```

A ferramenta extrai só essas skills do zip, anota a origem e os alertas de risco no `SOURCES.md` e cria o grupo se ele não existir:

```powershell
.\scripts\add-skills.ps1 -Plugin meu-grupo -Description "o que o grupo faz" -Skills skill-a,skill-b
```

3. Veja os alertas na tabela do `SOURCES.md` do grupo antes de usar.
4. Faça o commit e o push.

## Remover uma skill de um grupo

Apague a pasta `plugins/<grupo>/skills/<skill>` e a linha dela no `SOURCES.md` do grupo.

## Cuidados

- Os grupos marcados como não testados em `GRUPOS.md` ainda não foram testados. Se algum falhar, me diga qual.
- Skills com `disable-model-invocation` só rodam quando você chama pelo nome (`/grill-me`). O Claude não as chama sozinho.
- O zip guarda só o `SKILL.md`. Skills que dependem de scripts ou arquivos extras (como `planning-with-files`) funcionam parcialmente.
- O alerta do `SOURCES.md` é uma busca de palavras (rede, instalação, MCP, scripts), não uma revisão. Palavra encontrada não significa perigo, e ausência não garante segurança.
- Skills de segurança e DevOps podem sugerir comandos que mudam sistemas. Revise antes de aprovar.
- Licenças: `catalog/LICENSES.md`. O repositório é público.
