PROGRAM test_variables
    ! Declaração de variáveis não implicitas
    IMPLICIT NONE

    ! Declaração de variáveis
    INTEGER :: quantidade
    REAL :: peso
    
    ! Atribuição de valores
    quantidade = 51
    peso = 45.6
    
    ! Impressão de valores
    PRINT *, 'Quantidade = ', quantidade
    PRINT *, 'Peso = ', peso

    ! Impressão do maior valor inteiro e do menor valor real positivo
    PRINT *, 'Maior Valor Inteiro = ', HUGE(quantidade)
    PRINT *, 'Menor Valor Real Positivo = ', TINY(peso)
    
END PROGRAM test_variables