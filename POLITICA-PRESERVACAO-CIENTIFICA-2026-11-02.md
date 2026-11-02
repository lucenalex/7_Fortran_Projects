# Política de retenção e reprodutibilidade Fortran — 02/11/2026

Relaciona-se à [política científica do acervo LaTeX](https://github.com/lucenalex/6_LaTeX_Projects/blob/main/POLITICA-PRESERVACAO-CIENTIFICA-2026-11-02.md), [matriz Windows/Intel](MATRIZ-WINDOWS-INTEL-FORTRAN-2026-11-02.md) e [investigação dos fontes ausentes](FORENSICA-FONTES-AUSENTES-2026-11-02.md).

## Decisão de retenção

**Preservar todos os executáveis Windows/Intel Fortran e seus objetos, projetos Visual Studio e metadados**, até classificação por projeto e cadeia de compilação. A árvore corrente possui 51 arquivos `.exe` e 37 arquivos `.o`; essa contagem descreve o snapshot em 02/11/2026 e não representa arquivos a excluir.

- **Fontes e dados:** preservar `.f03/.f08/.f90/.f18`, dados, fórmulas, figuras e instruções; extensões enganosas como `temp_convertion.rtf.f08` exigem classificação por conteúdo.
- **Projetos de IDE:** preservar `.sln`, `.vfproj` e arquivos associados, inclusive os incompletos. Não inferir fonte ausente nem gerar arquivo fictício para “corrigir” o inventário.
- **Binários históricos:** não são descartáveis porque alguma compilação `gfortran` foi bem-sucedida.
- **Anotações e LaTeX:** preservar manuscritos, notas, PDFs, bibliografias e artefatos cuja reprodução ainda não foi comprovada.
- **Terceiros:** revisar licença e proveniência de PDFs/manuais; não presumir direito de redistribuição.

## Evidência e barreiras técnicas

A auditoria Linux obteve **78 PASS**, **0 FAIL**, **2 SKIP explícitos** na matriz de sintaxe; a comparação Windows com GFortran produziu builds para **seis** projetos `.vfproj`. Há dois projetos com fontes/ReadMes ausentes e um projeto sem fontes declarados. O runner Windows **não disponibilizou `ifx`, `ifort` nem `devenv`**; por isso, nenhum executável Intel/Visual Studio está homologado por esses testes.

É condição para qualquer proposta de limpeza ampla: identificar compilador exato, SDK e bibliotecas, compilar em ambiente Windows com Intel oneAPI/Visual Studio, executar somente testes adequados com dados fictícios quando seguro, arquivar logs, conferir saída e atualizar backup Git independente e restaurado.

## Situação atual

O [PR #2](https://github.com/lucenalex/7_Fortran_Projects/pull/2) que retira **141 artefatos** permanece em rascunho e **não está autorizado para integração**. A [issue #11](https://github.com/lucenalex/7_Fortran_Projects/issues/11) registra fontes ausentes. Não reescrever histórico, não renomear projetos sem mapa de dependências e não extrapolar o resultado de GFortran para Intel.

Para inventariar a máquina Windows sem executar programas antigos:

```powershell
./tools/check_intel_windows.ps1
```

Manter backups do repositório e documentação de restauração fora do serviço de hospedagem. Verificações de syntax não garantem correção numérica, física ou operacional.
