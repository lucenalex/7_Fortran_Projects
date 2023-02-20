Program test
    Implicit None
    Integer :: i = 1, j = 1
    Do while (i <= 3)
        Do while (j<= 3)
            print *, '(i, j) =', '(',i,',', j,')'
            j = j + 1
        End do
        i = i + 1
    End Do
End Program test
