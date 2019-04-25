real(8) function im(wj, w, gj)
  implicit none
  real(8) wj, w, gj
  im=gj*w/((wj*wj-w*w)**2+gj*gj*w*w)
end function im

