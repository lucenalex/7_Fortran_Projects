Program Main
        !
        Implicit None
        !
        Integer :: i, j, k
        !
        iloop: Do i = 1, 3
                jloop: Do j = 1, 3
                        kloop: Do k = 1, 3
                                Print *, "(i , j, k) = ", i, j, k
                                If (k == 2) Then
                                        Exit jloop
                                End If
                        End Do kloop
                 End Do jloop
         End Do iloop
End Program Main
