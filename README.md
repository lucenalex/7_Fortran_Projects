# Estudos Fortran — acervo histórico, testes e preservação

Coleção de exercícios de Fortran, exemplos de console, projetos Visual Studio/Intel e notas didáticas. **Não é um produto único**, nem todos os executáveis históricos são reproduzíveis com a mesma cadeia de compilação.

**Atualizado em 02/11/2026.** Esta página distingue os resultados efetivamente verificados, as dependências pendentes e as propostas de limpeza não integradas.

## Mapa do acervo

| Conteúdo | Local / observação |
|---|---|
| Curso e tutoriais | `fortran/Basic.Fortran.Course/` e `fortran/Basic.Fortran.Tutorial/` |
| Exercícios Visual Studio | `Console1/` a `Console8/`, `Configurations_Test/`, `fortran/Visual_Studio/` e `ttagaint_solution/` |
| Outros experimentos | `MHS/`, `test/`, `test2/` e exemplos `.f03/.f08/.f90/.f18` |
| Materiais e referências | Pastas de notas, arquivos `.tex`, `.bib`, `.pdf` e figuras, sujeitos a verificação de direitos |

## Evidência de validação — até 02/11/2026

| Verificação | Resultado demonstrado | Limites |
|---|---|---|
| Sintaxe com GFortran no Linux | **78 PASS, 0 FAIL, 2 SKIP justificados**; 52 avisos remanescentes | Um arquivo RTF com extensão `.f08` e um exemplo COM/Windows não integram essa matriz |
| Testes funcionais selecionados | Equações quadráticas, ajustes lineares e potências corrigidos; testes de regressão automatizados | Não equivale a testar todo o acervo |
| Arquivos Visual Studio `.vfproj` | **9 projetos inventariados** | Verificar fontes e dependências específicas |
| Compilação comparativa GFortran/Windows | **6 projetos compilados e linkados** | Outros **2** têm arquivos-fonte ausentes e **1** não declara fontes |
| Compilação Intel `ifx/ifort` com Visual Studio | **Não realizada** | Ferramentas Intel e `devenv` não disponíveis no runner |
| Backup Git independente | Bundle anterior recuperado, checksum validado, clone espelhado restaurado e `git fsck` aprovado | Snapshot de uma revisão anterior às últimas mudanças; atualizar antes de exclusões |

### Executar os verificadores

Em um clone autorizado, no Linux com GFortran:

```bash
bash tools/check_sources.sh
bash tools/smoke_tests.sh
```

A análise sintática de todo o acervo **não executa** fontes arbitrários. Os testes funcionais acima executam apenas exemplos específicos, com entradas determinadas.

No Windows com PowerShell, para inspecionar Intel/Visual Studio sem compilar:

```powershell
./tools/check_intel_windows.ps1
```

Uma matriz Windows adicional está em `tools/audit_vfproj_windows.py` e `.github/workflows/windows-intel-inventory.yml`; em modo padrão, ela **registra projetos incompletos como avisos**, sem afirmar que foram compilados. Para reprovar projetos com referências ausentes, execute o inventário com `--strict`.

## Fontes ausentes e dependências

`Console1/Console1/Console1.vfproj` referencia `Console1.f90` e `ReadMe.txt` ausentes; `ttagaint_solution/ttagaint/ttagaint.vfproj` referencia `ttagaint.f90` e `ReadMe.txt` ausentes. O projeto `Aprendizagem.vfproj` não declara fontes. As árvores de todas as branches acessíveis e o histórico dos caminhos foram consultados, sem localizar esses arquivos. **Não criar implementações inventadas para preencher o acervo histórico.**

Detalhes e recuperação: [FORENSICA-FONTES-AUSENTES-2026-11-02.md](FORENSICA-FONTES-AUSENTES-2026-11-02.md), [matriz Windows](MATRIZ-WINDOWS-INTEL-FORTRAN-2026-11-02.md) e [issue #11](https://github.com/lucenalex/7_Fortran_Projects/issues/11).

## Preservação, limpeza e riscos

Os inventários de curadoria identificaram executáveis e objetos de compilação, dados auxiliares e arquivos temporários de IDE. O histórico Git preserva versões antigas, mas isso **não substitui** verificar um backup externo atual e restaurável. A proposta de remoção de **141 artefatos** está no [PR #2](https://github.com/lucenalex/7_Fortran_Projects/pull/2), **aberto em rascunho e não integrado**.

Não excluir automaticamente `.exe`, `.o`, arquivos de solução, manuscritos ou dados. A extensão do arquivo não basta para decidir se um item é reproduzível ou historicamente importante.

## Documentação e trilha de auditoria

- [Curadoria inicial](CURADORIA-P2.md)
- [Validação de fontes e testes](VALIDACAO-FONTES-2026-11-02.md)
- [Compatibilidade Intel/Windows](COMPATIBILIDADE-INTEL-WINDOWS.md)
- [Matriz de projetos Intel/Windows](MATRIZ-WINDOWS-INTEL-FORTRAN-2026-11-02.md)
- [Forense de fontes ausentes](FORENSICA-FONTES-AUSENTES-2026-11-02.md)
- [PR de compatibilidade Windows #10](https://github.com/lucenalex/7_Fortran_Projects/pull/10)

**Licenciamento:** não presumir autorização para republicação de referências externas, PDFs ou materiais de terceiros. Nenhuma licença na raiz foi confirmada nesta auditoria.
