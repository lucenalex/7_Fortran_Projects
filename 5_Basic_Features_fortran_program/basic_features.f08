PROGRAM basic_features

  ! Propósito: 
  !    Demonstrar as características básicas da linguagem Fortran

  ! Instrução para não permitir variáveis implicitas (não declaradas)
  IMPLICIT NONE

  ! Declaração de variáveis usadas neste programa
  INTEGER :: i, j, k ! Todas as variáveis são do tipo inteiro

  ! Atribua dois valores para serem armazenadas nas variáveis i e j
  WRITE(*,*) 'Digite dois valores inteiros:'
  READ(*,*) i, j

  ! Realize a multiplicação dos valores armazenados nas variáveis i e j
  k = i * j
  
  ! Exiba o resultado da multiplicação
  WRITE(*,*) 'O resultado da multiplicação é:', k

  ! Fim do programa
  STOP
END PROGRAM basic_features