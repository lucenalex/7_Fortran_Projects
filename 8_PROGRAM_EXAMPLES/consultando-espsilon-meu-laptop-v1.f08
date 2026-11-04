program consultar_epsilon
    implicit none
    
    print *, epsilon(1.0)     ! Retorna a precisão para REAL simples (single)
    print *, epsilon(1.0d0)   ! Retorna a precisão para REAL de precisão dupla (double)
    
end program consultar_epsilon