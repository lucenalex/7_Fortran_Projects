# Validação incremental de fontes — Fortran (2026-11-02)

## Ferramentas e procedimento

A branch de validação contém `tools/check_sources.sh`, verificador estático com GCC e GFortran que **não executa** fontes arbitrários nem muda arquivos do repositório. Ele grava os diagnósticos em pasta externa ao Git.

Em checkout local:

```bash
bash tools/check_sources.sh
# Ou: bash tools/check_sources.sh /tmp/relatorios-fortran
```

A sintaxe Bash foi verificada e o verificador funcionou em uma amostra local de 5 fontes (4 Fortran, 1 C), todos PASS. **Não foi possível clonar a árvore Git completa nesta sessão**, portanto uma execução local de todos os arquivos do repositório permanece pendente.

## Ensaios de compilação e execução realizados

| Fonte | Resultado |
|---|---|
| `fortran/Basic.Fortran.Course/prog1.f03` | Compilou e imprimiu Hello world |
| `fortran/Basic.Fortran.Course/prog2.f03` | Compilou; para a=1,b=-3,c=2 retornou duas raízes reais |
| `fortran/Basic.Fortran.Course/prog3.f03` | Compilou; executou o laço DO |
| `fortran/Basic.Fortran.Course/prog4.f03` | Compilou; imprimiu tabela de quadrados |
| `fortran/Basic.Fortran.Course/prog6.f03` | Compilou; executou laços aninhados |
| `Console3/Console3/Source1.f90` | Compilou e imprimiu saudação em português |
| `fortran/Basic.Fortran.Tutorial/bft1.f08` | Compilou; somou 12 e 15, mas emitiu avisos sobre tabulações não conformes |

GFortran utilizado nos novos testes: GNU Fortran 14.2.0. A compilação ocorreu em arquivos reproduzidos a partir de conteúdo textual lido via conector, **não** a partir de um clone autenticado de todo o repositório.

## Limitações e erros identificados

- `prog2.f03`: quando `b^2-4ac<0`, o programa declara corretamente que não há raízes reais, mas continua a imprimir variáveis de raízes não inicializadas. Para `a=0`, a fórmula também exige tratamento especial antes da divisão por `2a`. Elaborar correção e testes de casos limite separadamente da limpeza dos binários.
- Os arquivos `.vfproj` examinados de `Console4`, `Console8`, `Aprendizagem_Fortran` e `Configurations_Test` declaram **Intel Fortran / Visual Studio**, com configurações `Win32`, `x64`, Debug e Release. O projeto `Configurations_Test` apresenta ainda referência a `ifxCompiler`. GFortran em Linux **não substitui** teste no ambiente original.
- Arquivos temporários de IDE e saídas compiladas podem ser tecnicamente regeneráveis, mas não há prova de que as versões binárias antigas sejam idênticas às reconstruídas ou de que não estejam sendo utilizadas por algum fluxo externo.

## Condição para prosseguir

O PR #2 propõe retirar **141 arquivos gerados**, somente em uma branch isolada. **Ainda é rascunho e não deverá ser integrado** antes de validação representativa dos projetos Intel/Windows, auditoria de dados dependentes e backup Git independente integral com restauração testada.

Nenhum fonte Fortran foi alterado nesta auditoria.
