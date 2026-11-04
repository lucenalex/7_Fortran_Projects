PROGRAM determina_exponencial
    IMPLICIT NONE
    INTEGER :: potencia, fatorial, i

    fatorial = 1

    WRITE(*,100)
    100 FORMAT ("Digite um número inteiro não negativo:")

    READ (*,*) potencia

    IF (potencia == 0) THEN
        WRITE(*,110)
        110 FORMAT ("O fatorial de 0 é 1.")
    ELSE IF (potencia > 0) THEN
        DO i = 1, potencia
            fatorial = fatorial*i
        END DO
        WRITE(*,120) 'O fatorial de ', potencia, fatorial
        120 FORMAT (/A13,I2,' é ', I6)
    ELSE
        WRITE(*,130)
        130 FORMAT ("Não é possível calcular o fatorial de números negativos.")
    END IF

END PROGRAM determina_exponencial
