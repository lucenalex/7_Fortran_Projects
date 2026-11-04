! Exemplo - Ajustando uma linha a um conjunto de medidas ruidosas
!
! A velocidade de um objeto em queda livre na presença de um campo
! gravitacional constante é dada pela equação
!
!                       v(t) = v_0 + a*t                (eq.1)
!
! onde v(t) é a velocidade em qualquer instante 't', 'a' é a acelreção
! devido à gravidade, e 'v_0' é a velocidade no intante t=0. Essa equação,
! derivada da física elementar, é conhecida por todos os estudantes
! de física do primeiro ano do ensino médio. Se traçarmos o gráfico da 
! velocidade como função do tempo para tal objeto, nossos pontos de 
! medição, (t,v), devem cair ao longo de uma linha reta. No entanto, o 
! mesmo estudante de física do primeiro ano também sabe que, se formos 
! ao laboratório e tentarmos medir a velocidade como função do tempo de 
! um objeto, nossas medições não cairão em uma linha reta. Eles chegarão 
! perto de tal linha, mas nunca se alinharão perfeitamente a ela. A 
! imeidata pergunta que se faz é "Por que não?" E resposta imediata é
! "Porque nunca podemos fazer medições perfeitas." Há sempre algum ruído 
! incluído nas medições, o que as distorce.
!
! Existem muitos casos na ciência e na engenharia em que existem
! conjuntos de dados ruidosos como este, e desejamos estimar a linha reta
! que "melhor se encaixa" nos dados. Esse problema é chamado de problema
! de regressão linear, e podemos formulá-lo da seguinte forma: 
!
! Dado um conjunto ruidoso de medidas, (x,y), que parecem recair ao longo 
! de uma linha reta, podemos encontrar a equação da linha
!
!                           y = m*x + b                (eq.2)
!
! que "melhor se encaixa" nessas medidas? Se pudermos determinar os
! coeficientes de regressão m e b, podemos usar essa equação para prever
! o valor de y em qualquer x calculando a (eq.2) para esse valor de x.
!
! Um método padrão para encontrar os coeficientes de regressão 'm' e 'b' 
! é o método dos mínimos quadrados. Este método é denominado "mínimos 
! quadrados" porque produz a linha da (eq.2) para a qual a soma dos
! quadrados das diferenças entre os valores observados de y e os valores 
! de previstos de y é a menor possível. A inclinação da linha dos mínimos 
! quadrados é dada por
!
!                            (Σx*y) - (Σx)Y
!                       m = -----------------          (eq.3)
!                            (Σx^2) - (Σx)X
!
! e a interceptação da linha de mínimos quadrados é dada por
!
!                           b = Y - m*X                (eq.4)
!
! onde
!
! Σx é a soma dos valores de x
! Σx^2 é a soma dos quadrados dos valores de x
! Σxy é a soma dos produtos dos valores correspondentes de x e y
! X é a média dos valores de x
! Y é a média dos valores de y
!
! Escreva um programa que calcule a inclinação dos mínimos quadrados, 
! 'm', e a interceptação com eixo y, 'b', para um determinado conjunto 
! de pontos de dados de medidas (ruidosos) que podem ser encontrados em 
! um arquivo de dados de entrada.
!
! SOLUÇÃO
!
! 1. Declare o problema
!       Calcule a inclinação 'm' e a interceptação 'b' de uma linha de 
! mínimos quadrados que melhor se ajusta a um conjunto de dados de 
! entrada que consiste em um número arbitrário de pares (x,y). Os dados
! de entrada (x,y) residem em um arquivo de entrada especificado pelo 
! usuário.
!
! 2. Defina as entradas e as saídas
!       As entradas requeridas por este programa são pares de pontos 
! (x,y), onde x e y são quantidades reais. Cada par de pontos estará 
! localizado em uma linha separada no arquivo de disco de entrada. O 
! número de pontos no disco não é conhecido com antecedência.
! As saídas deste programa são a inclinação  e a interceptação da linha
! ajustada dos mínimos quadrados, mais o número de pontos que entaram no
! ajuste.
!
! 3. Descreva o algoritmo
!       Este programa pode ser dividido em quatro etapas principais:
!           Obtenha o nome do arquivo de entrada e abra-o;
!           Acumule as estatísticas de entrada;
!           Calcule a inclinação e a interceptação;
!           Escreva a inclinaçãoe a interceptação.
!       A primeira etapa principal do programa é obter o nome do arquivo 
! de entranda e abrir o arquivo. Para fazer isso, teremos que solicitar
! ao usuário que insira o nome do arquivo de entrada. Depois que o 
! arquivo for aberto, devemos verificar se a abertura foi bem-sucedida.
! Em seguida, devemos ler o arquivo e acompanhar o número de valores 
! inseridos, além das somas Σx, Σy, Σx^2 e Σxy. O pseudocódigo para 
! essa etapas é:
!
!       Inicializar n, sum_x, sum_x2, sum_y, and sum_xy com 0;
!       Solicitar ao usuário o nome do arquivo de entrada;
!       Abrir o arquivo "filename"
!       Verifique se há erro em OPEN
!
!       WHILE
!           READ x, y a apartir do arquivo "filename"
!           IF (fim do arquivo) EXIT
!           n <- n + 1
!           sum_x  <- sum_x  + x
!           sum_y  <- sum_y  + y
!           sum_x2 <- sum_x2 + x**2
!           sum_xy <- sum_xy + x*y
!       END OF WHILE
!
! Em seguinda, devemos calcular a inclinação e a interceptação da reta 
! dos mínimos quadrados. O pseudocódigo para esta etapa é apenas as 
! versões Fortran das eqs. (3) e (4).
!
!       x_bar <- sum_x / real(n)
!       y_bar <- sum_y / real(n)
!       slope <- (sum_xy - sum_x * y_bar) / ( sum_x2 - sum_x * x_bar )
!       y_int <- y_bar - slope * x_bar
!
! Finalmente, precisamos escrever os resultados.
!
!       Escreva a inclinação "inclinação"e intercepte "y_int".
!
! 4. Transforme o algoritimo em instruções Fortran
!       O programa Fortran final é mostrado no arquivo main.f90
!
! 5. Para testar este programa, tentaremos um conjunto de dados simples. 
!    Por exemplo, se cada ponto no conjunto de dados de entrada realmente 
!    cair ao longo de uma linha, a inclinação e a interceptação resultantes 
!    deverão ser exatamente a inclinação e a interceptação dessa linha. 
!    Assim, o conjunto de dados
!           1.1,1.1
!           2.2,2.2
!           3.3,3.3
!           4.4,4.4
!           5.5,5.5
!           6.6,6.6
!           7.7,7.7
!    deve produzir uma inclinação de 1,0 e uma interceptação de 0,0. Se 
!    colocarmos esses valores em um arquivo chamado INPUT e executarmos o 
!    programa, os resultados serão:
!
!       Este programa executa um ajuste de mínimos quadrados de um
!       conjunto de dados de entrada definitos em a linha reta
!       do arquivo que contém os pares de entrada (x,y): 
!       input.dat
!       Os coeficiente de Regressão para a reta de mínimos quadrados:
!           Inclinação (m)    =        1.000
!           Interceptação (b) =        0.000
!           Número de pontos  =            7
!
!    Agora vamos adicionar um pouco de ruído às medições. O conjunto de 
!    dados torna-se
!           1.10,1.01
!           2.20,2.30
!           3.30,3.05
!           4.40,4.28
!           5.50,5.75
!           6.60,6.48
!           7.70,7.84
!
!    Se esses valores forem colocados em um arquivo chamado INPUT1 e o 
!    programa for executado nesse arquivo, os resultados serão:
!
!       Este programa executa um ajuste de mínimos quadrados de um
!       conjunto de dados de entrada definitos em a linha reta
!       do arquivo que contém os pares de entrada (x,y): 
!       input1.dat
!       Os coeficiente de Regress├úo para a reta de m├¡nimos quadrados:
!           Inclinação (m)    =        1.024
!           Interceptação (b) =       -0.120
!           Número de pontos  =            7
!
!    Se calcularmos a resposta manualmente, é fácil mostrar que o 
!    programa fornece as respostas corretas para nossos dois conjuntos 
!    de dados de teste. O conjunto de dados de entrada ruidoso e a linha 
!    ajustada de mínimos quadrados resultante são mostrados na Figura. O 
!    programa neste exemplo tem um problema — ele não consegue distinguir 
!    entre o final de um arquivo de entrada e um erro de leitura (como 
!    dados de caracteres em vez de dados reais) no arquivo de entrada. 
!    Como você modificaria o programa para distinguir entre esses dois 
!    casos possíveis? Além disso, observe que este programa armazenou 
!    dois formatos simples em constantes de caracteres em vez de definir 
!    uma instrução de formato separada para cada um deles. Essa é uma boa 
!    prática quando os formatos são simples.