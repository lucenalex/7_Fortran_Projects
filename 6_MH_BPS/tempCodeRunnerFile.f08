broutine interp1d(x, y, x_new, y_new)
    implicit none
    real(8), intent(in) :: x(:), y(:), x_new(:)
    real(8), intent(out) :: y_new(size(x_new))
    integer :: n, m, j, k
    real(8) :: t

    n = size(x)
    m = size(x_new)

    do k = 1, m
      if (x_new(k) <= x(1)) then
        y_new(k) = y(1)
      else if (x_new(k) >= x(n)) then
        y_new(k) = y(n)
      else
        do j = 1, n-1
          if (x_new(k) >= x(j) .and. x_new(k) <= x(j+1)) then
            t = (x_new(k) - x(j)) / (x(j+1) - x(j))
            y_new(k) = y(j) + t * (y(j+1) - y(j))
            exit
          end if
        end do
      end if
    end do
  end subroutine interp1d
