real(8) function re(wj, w, gj)
  implicit none
  real(8) wj, w, gj
  re=(wj*wj-w*w)/((wj*wj-w*w)**2+gj*gj*w*w)
end function re

