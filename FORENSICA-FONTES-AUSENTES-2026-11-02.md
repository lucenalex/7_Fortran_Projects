# Rastreio dos fontes ausentes — 2 de novembro de 2026

## O que foi pesquisado

Auditoria dos projetos `.vfproj` legados, motivada pela matriz Windows [workflow 41482623762](https://github.com/lucenalex/7_Fortran_Projects/actions/runs/41482623762).

Foram examinadas as árvores Git **recursivas de todas as 12 branches acessíveis** nesta data, incluindo `main`, `organization/2026-11-02`, `preservation/precleanup-2026-11-02`, branches de correção e a proposta de limpeza. Também foi consultado o histórico de commits do GitHub, por caminho exato, para os quatro arquivos faltantes.

**Resultado:** nenhum dos quatro arquivos apareceu nas árvores das branches consultadas, e as consultas de histórico por caminho não retornaram commits. Isso não prova que nunca existiram em outra máquina, disco, backup externo, fork ou histórico Git inacessível.

| Projeto | Fonte ausente | Documento ausente | Diagnóstico |
|---|---|---|---|
| `Console1/Console1/Console1.vfproj` | `Console1.f90` | `ReadMe.txt` | Referências quebradas; não há fonte para construir |
| `ttagaint_solution/ttagaint/ttagaint.vfproj` | `ttagaint.f90` | `ReadMe.txt` | Referências quebradas; não há fonte para construir |
| `fortran/Visual_Studio/Aprendizagem/Aprendizagem/Aprendizagem.vfproj` | Nenhuma fonte declarada | — | Projeto de configuração sem unidades compiláveis |

**Nenhuma fonte fictícia ou arquivo vazio foi criado para disfarçar o problema.** Os projetos `.vfproj` foram preservados exatamente como estavam.

## Caminho de recuperação

1. Procurar `Console1.f90`, `ttagaint.f90` e `ReadMe.txt` em cópias locais antigas de Visual Studio, OneDrive, arquivos ZIP/7z, discos e backups.
2. Verificar a origem, o conteúdo e os hashes SHA-256 antes de incorporar qualquer cópia restaurada.
3. Criar branch separada para recuperação, explicar a proveniência no commit e executar testes de construção.
4. Não mover nem apagar os executáveis históricos dos projetos incompletos enquanto suas fontes não forem recuperadas ou houver decisão expressa de retenção arquivística.

## Estado das ferramentas

- Windows com **GFortran**: seis projetos `.vfproj` puderam ser compilados/linkados por comparação.
- Windows com **Intel ifx/ifort + Visual Studio**: **não testado**; `ifx`, `ifort` e `devenv` estavam ausentes do runner utilizado.
- `tools/check_intel_windows.ps1` inspeciona as ferramentas presentes na máquina; o inventário automático `tools/audit_vfproj_windows.py` inclui um modo `--strict` que considera arquivos ausentes uma falha.
- A ausência de fontes não será ignorada nos relatórios, mesmo quando o workflow de inventário for concluído com sucesso.

Referências: [Matriz Windows Intel](MATRIZ-WINDOWS-INTEL-FORTRAN-2026-11-02.md), [Issue #11](https://github.com/lucenalex/7_Fortran_Projects/issues/11).

## Conclusão de preservação

O PR [#2](https://github.com/lucenalex/7_Fortran_Projects/pull/2) de limpeza ampla permanece em **rascunho, sem integração**. Sem uma construção real com Intel/Visual Studio e sem os fontes ausentes, nenhum executável legado deve ser descartado indiscriminadamente.
