# Verificação de compilação e proposta de limpeza — Fortran (2026-11-02)

## Escopo deste branch
- Remoção **apenas neste branch** de **141 caminhos**: 33 itens de cache `.vs/`, 101 binários/objetos/arquivos de debug e 7 auxiliares LaTeX.
- Soma dos tamanhos dos blobs retirados da árvore proposta: **17.646.736 bytes**. Não equivale à economia do armazenamento Git.
- Caminhos e SHA originais estão em `MANIFESTO-REMOCao-PROPOSTA-2026-11-02.csv`.
- Fontes Fortran, projetos Visual Studio, PDFs e bancos de dados foram preservados.
- Arquivos `.swp`, `.un~` e `.bak` fora de `.vs/` foram **preservados** porque podem conter conteúdo único de editores.

## Testes pontuais
Compilação local com `gfortran -std=f2008 -Wall -Wextra -fcheck=all`, a partir de reprodução das fontes lidas via conector GitHub; não houve checkout completo.

| Fonte testada | Compilação | Execução |
|---|---|---|
| `fortran/Basic.Fortran.Course/prog1.f03` | Sucesso | Imprime “Hello, world!” |
| `fortran/Basic.Fortran.Course/prog2.f03` | Sucesso | Para a=1,b=-3,c=2 retorna raízes 2 e 1 |

**Defeito encontrado em prog2.f03:** para discriminante negativo (a=1,b=0,c=1), o programa avisa que não há raízes reais mas **continua imprimindo valores de variáveis não inicializadas**. Também há risco de divisão por zero quando a=0. Corrigir lógica e criar testes de fronteira em outro commit; não misturar correção científica com limpeza de binários.

## Pendências
- Só **2 programas Fortran** foram compilados entre muitos arquivos presentes.
- Os executáveis Visual Studio/Windows não foram regenerados integralmente.
- As configurações locais de IDE podem ter valor prático; conferir dependências antes de integrar.
- O PR deve permanecer **draft** até validar reprodução e backup independente.
