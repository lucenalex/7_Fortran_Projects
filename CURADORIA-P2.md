# Curadoria proposta — Fortran (2026-11-02)

## Resultado da inspeção
Árvore de `main` inspecionada: 351 blobs, 21.920.171 bytes brutos. Padrões identificados: 51 `.exe`, 37 `.o`, 11 `.suo`, 8 `.pdb`, 6 `.vsidx`. Outras extensões de saída também aparecem.

## Decisões
- **Preservar:** todos os programas-fonte Fortran, arquivos de projetos que viabilizem recompilação, textos LaTeX e dados originais.
- **Quarentena de limpeza (sem exclusão nesta etapa):** `**/.vs/`, `**/bin/Debug/`, `**/obj/Debug/`, `**/x64/Debug/`, executáveis, objetos e arquivos de debug.
- **Inspecionar antes de agir:** `207674042.pdf`, `tc.exe`, `tc.o`, materiais de terceiros e arquivos de dados com extensão ambígua.

## Condições para remoção
1. Catalogar caminhos exatos e hashes.
2. Recompilar os projetos representativos em ambiente isolado.
3. Verificar que os binários resultantes não contêm resultados únicos.
4. Gerar commit em branch própria de limpeza, comparar e apenas então decidir merge.

`.gitignore` **não apaga** arquivos já rastreados; não usar `git clean` nem `git filter-repo` neste momento. Nenhuma alegação de segurança ou qualidade de código decorre desta inspeção.
