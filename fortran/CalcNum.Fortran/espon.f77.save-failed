c     Programa epson
c
c     Objetivo:
C         Determinar a precisao da maquina.
c
      real eps, eps1
c         A variavel eps irah conter a precisao da maquina.
      eps = 1.0
   10 continue
          eps  = eps / 2.0
          eps1 = eps + 1.0
      if (eps1.gt.1.0) go to 10
      write (18,20) eps
   20 format('A maquina acha que ',e23.19,' vale zero.')
      call exit
      end
