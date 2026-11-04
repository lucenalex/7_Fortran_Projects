PROGRAM output
    ! Descritores:
    ! I: usado para descrever o formato de dados inteiro;
    ! F: usado para descrever o formato de dados real;
    ! E: usado para descrever o formato de dados real em notação
    !    exponencial em potências de base 10 (mantissa entre 0.1
    !    e 1.0);
    ! ES: usado para descrever o formato de dados real em notação
    !    científica em potências de base 10;
    ! L: usado para descrever o formato de dados lógico;
    ! A: usado para descrever o formato de dados alfanumérico.
    ! X: usado para descrever espaços em branco de um caractere.
    ! T: usado para descrever tabulações.

    ! Forma Geral dos descritores:
    ! - INTEGER: rIw ou rIw.m
    ! - REAL: rFw.d
    ! - REAL: rEw.d (notação exponencial - base 10)
    ! - REAL: rESw.d (notação científica)
    ! - LOGICAL: rLw
    ! - CHARACTER: rA ou rAw
    ! - Espaçamento Horizontal: nX
    ! - Tabulação: Tc

    ! Simbolos usados nos descritores:
    ! r: Contagem de repetição — o número de vezes que um
    !    descritor ou grupo de descritores deve ser usado.
    ! w: Largura do campo — o número de caracteres a serem
    !    usados ​​para a entrada ou saída;
    ! m: Número mínimo de dígitos a serem exibidos;
    ! d: Número de dígitos à direita da casa decimal para entrada
    !    ou saída real.
    ! n: Número de espaços em branco a serem usados para a entrada
    !   ou saída;
    ! c: Número de tabulações a serem usadas para a entrada ou saída.
    !    c é o número da coluna para ir. É usado para pular diretamente
    !    para uma coluna específica no buffer de saída.

    ! OBSERVAÇÕES:
    ! - Se um número real não couber no campo em que será impresso,
    !   o campo será preenchido com asteriscos;
    ! - Em geral, o comprimento do formato E satisfaz a seguinte
    !   expressão: w >= d + 7. Do contrário, o campo será preenchido
    !   por asteriscos;
    ! - Se a largura w do campo for maior que o comprimento da variável
    !   de caractere, a variável será impressa justificada à direita no
    !   campo. Se a largura do campo for menor que o comprimento da
    !   variável de caractere, somente os primeiros w caracteres da
    !   variável serão impressos no campo.
    ! - O descritor T funciona muito como um caractere “tab” em uma máquina
    !   de escrever, exceto que é possível pular para qualquer posição na
    !   linha de saída, mesmo se já tivermos passado dessa posição na
    !   instrução FORMAT.

    IMPLICIT NONE
    INTEGER :: index2 = -12, junk = 4, number = -12345
    INTEGER :: index_sign = 10
    REAL :: time = 300.0, depth = 330.0, amplitude = 850.65, phase = 30.0
    REAL :: a = -12.3, b = .123, c = 123.456
    REAL :: aa = 1.2346E6, bb = 0.001, cc = -77.7E10, dd = -77.7E10
    LOGICAL :: log_output = .TRUE., log_dubug = .FALSE.
    CHARACTER(len=17) :: string = "This is a string."
    CHARACTER(len=10) :: first_name = "James        "
    CHARACTER :: initial = 'R'
    CHARACTER(len=16) :: last_name = "Johnson       "
    CHARACTER(len=9) :: class = 'COSC 2301'
    INTEGER :: grade = 92

    WRITE (*,100) index2, index2+12, junk, number
    100 FORMAT (I0,1X,I0,1X,I0,1X,I0)
    ! 1X: Permite que seja dado um espaço em brando de um
    !     carctere entre um variável e outra.
    ! I0: Comprimento da variável do tipo integer.

    WRITE (*,200) index2, index2+12, junk, number
    200 FORMAT (' ', 2I5, I6, I10)

    WRITE (*,210) index2, index2+12, junk, number
    210 FORMAT (' ', 2I5.0, I6, I10.8)

    WRITE (*,220) index2, index2+12, junk, number
    220 FORMAT (' ', 2I5.3, I6, I5)

    WRITE (*,230) a, b, c
    230 FORMAT (2F6.3, F8.3)

    WRITE (*,240) a, b, c
    240 FORMAT (3F10.2)

    WRITE (*,250) aa, bb, cc, dd
    250 FORMAT (2E14.4, E13.6, E12.6)

    WRITE (*,252) aa, bb, cc
    252 FORMAT (2ES14.4, ES12.6)

    WRITE (*,"(2L5)") log_output, log_dubug

    WRITE (*,254) string
    254 FORMAT (' ', A)

    WRITE (*,256) string
    256 FORMAT (' ', A20)

    WRITE (*,258) string
    258 FORMAT (' ', A6)

    WRITE (*,260) first_name, initial, last_name, grade, class
    260 FORMAT (A10, 1X, A1, 1X, A10, 4X, I3, T51, A9)

    WRITE (*,270) first_name, initial, last_name, class, grade
    270 FORMAT (A10, T13, A1, T15, A10, T51, A9, T29, I3)

    WRITE (*,280) first_name, initial, last_name, class, grade
    280 FORMAT (A10, T13, A1, T15, A10, T17, A9, T29, I3)

    ! Os descritores de formato podem ser combinados em uma única
    ! instrução WRITE.
    ! 300 FORMAT (I6, F10.2, A, F10.2, A, I6, F10.2, A, F10.2, A)
    ! 300 FORMAT (2(I6, 2(F10.2, A)))

    ! O descritor slash (/) é usado para pular para a próxima linha.

    WRITE (*,290) index_sign, time, depth, amplitude, phase
    290 FORMAT (//,T20, 'Results for Test Number ', I3,///, &
        1X, 'Time      =  ', F7.0/, &
        1X, 'Depth     =  ', F7.1, ' meters',/, &
        1X, 'Amplitude =  ', F8.2/, &
        1X, 'Phase     =  ', F7.1//)


END PROGRAM output

