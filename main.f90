program dispersion
  implicit none
  integer(2) i, n, Ne
  real(8) wj, w, gj
  real(8) e, e0, m
  real(8) re, im
  open(1, file='in.dat', status='old', action='read')
  open(2, file='freq.dat', action='write')
! For simplicity Ne = e = e0 = m =1.0d0
! above statement does not change the nature of dispersion curve. 
  read(1,*) Ne  ! numbers of electron
  read(1,*) e   ! charge of electron
  read(1,*) e0  ! epsilon not, permittivity of vacuum
  read(1,*) m   ! mass of electron
  read(1,*) wj  ! natural frequency of jth electron
  read(1,*) gj  ! damping of jth electron
  close(1)
  do i=0, 4000
    w=0.1*dble(i)
    write(2,10) w, re(wj, w, gj), im(wj, w, gj)
  end do
  close(2)
  10 format(f8.3, 2f15.8)
end program dispersion

   
