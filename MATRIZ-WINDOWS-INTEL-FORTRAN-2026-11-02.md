# Compatibilidade dos projetos Intel Fortran no Windows — 02/11/2026

## Resultado da matriz Windows

A execução [41481917032](https://github.com/lucenalex/7_Fortran_Projects/actions/runs/41481917032) examinou os **nove** projetos Visual Studio `.vfproj` no Windows Server 2022. O MSYS2/GFortran usado para comparação **não** equivale à cadeia Intel Fortran.

| Projeto | Integridade das referências | Compilação GFortran/Windows |
|---|---|---|
| `Configurations_Test` | Completa | PASS |
| `Console1` | **Ausentes** `Console1.f90`, `ReadMe.txt` | Sem fonte disponível |
| `Console2` | Completa | PASS |
| `Console3` | Completa | PASS |
| `Console4` | Completa | PASS |
| `Console8` | Completa | PASS |
| `fortran/Visual_Studio/Aprendizagem/Aprendizagem` | Projeto sem fontes declarados | Sem fonte disponível |
| `fortran/Visual_Studio/Aprendizagem_Fortran` | Completa | PASS |
| `ttagaint_solution/ttagaint` | **Ausentes** `ttagaint.f90`, `ReadMe.txt` | Sem fonte disponível |

Resumo: **6** projetos passaram por compilação/linkedição com GFortran no Windows; **2** projetos fazem referência a arquivos ausentes; **1** não declara arquivos-fonte.

## Dependências Intel não homologadas

O teste nativo de descoberta em Windows e a comparação do ambiente detectaram ausência dos comandos `ifx`, `ifort` e `devenv` no runner. Portanto **zero** projetos tiveram a compilação Intel/Visual Studio validada nesta rodada. Não se deve substituir a ausência de `ifx/ifort` por um resultado positivo do GFortran.

## Tratamento das ausências

- Os quatro caminhos ausentes foram conferidos contra a árvore Git corrente. Não se criaram fontes substitutos nem se removeu o conteúdo dos `.vfproj`.
- `Aprendizagem.vfproj` foi mantido como marcador histórico incompleto. Não se inferiu qual arquivo poderia compô-lo.
- O script `tools/audit_vfproj_windows.py` registra erros e emite anotações de aviso para projetos incompletos; o modo `--strict` falha quando detecta tais pendências. A execução padrão do workflow bem-sucedida significa **inventário executado**, não conformidade de todos os projetos.
- Projetos históricos podem depender de outros itens e configurações não detectáveis apenas pela lista `RelativePath` do XML.

## Próximas condições de aceite

1. Recuperar `Console1.f90` e `ttagaint.f90` apenas de fontes autoritativas, se existirem, e recuperar os `ReadMe.txt` históricos; não inventar seus conteúdos.
2. Confirmar o objetivo e a ausência de unidades em `Aprendizagem.vfproj`.
3. Em ambiente real com Intel oneAPI e Visual Studio, inventariar compiladores, selecionar as configurações dos nove projetos e reproduzir as builds pertinentes.
4. Manter o PR #2 de remoção de binários Fortran em rascunho até haver evidência de reprodutibilidade e decisões por projeto.

**Não foi realizado teste funcional nem execução de executáveis Intel/Windows históricos.**
