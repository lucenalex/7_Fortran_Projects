# Reprodutibilidade em Windows/Intel Fortran — verificação pendente

Esta rodada reduziu os avisos de `gfortran` no Linux de **370 para 52** mantendo **78 aprovações, zero falhas, duas exceções explícitas**. Isso não equivale a validar o compilador Intel, o linker nem os executáveis Windows.

## Evidências de dependência
Arquivos `.vfproj` indicam Intel Fortran/Visual Studio em `Console4`, `Console8`, `Configurations_Test` e `fortran/Visual_Studio/Aprendizagem_Fortran`; há referências a plataformas Win32/x64 e a `ifxCompiler`.

## Como verificar sem executar binários antigos
Em um **PowerShell** iniciado no ambiente Windows adequado (de preferência prompt de desenvolvedor configurado para Intel oneAPI), a partir da raiz deste repositório:

```powershell
powershell -NoProfile -File tools/check_intel_windows.ps1
```

O comando somente lista compiladores, ferramentas e projetos detectados. Para exigir que `ifx` ou `ifort` esteja disponível:

```powershell
powershell -NoProfile -File tools/check_intel_windows.ps1 -RequireCompiler
```

**Nenhuma execução Windows foi efetuada nesta auditoria.** O script fornecido não foi testado em PowerShell no ambiente atual, que não possui essa ferramenta.

## Condições para validar os projetos históricos
1. Capturar versões e configurações reais do Intel Fortran, Visual Studio e Windows.
2. Compilar cada solução selecionada em ambiente isolado, mantendo artefatos produzidos fora da árvore Git.
3. Testar programas com entradas sintéticas e verificar resultados.
4. Comparar dependências e finalidade dos executáveis versionados.
5. Somente então revisar a remoção proposta no PR #2; preservar binários que não puderem ser reconstruídos.

## Observações sobre os avisos restantes
Os 52 avisos restantes incluem formas antigas de continuação de strings, extensões GNU, demonstrações de divisão inteira, extensões de arquivo não reconhecidas e algumas variáveis não utilizadas. Exigem classificação por exemplo, não apenas desativar flags de aviso.

Trabalhos de documentação e saneamento não devem introduzir alterações matemáticas ou físicas sem testes.
