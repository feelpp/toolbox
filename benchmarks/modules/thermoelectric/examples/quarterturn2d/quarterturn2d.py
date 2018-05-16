from sympy import *
from sympy.solvers.solveset import linsolve
b, c, z, mu, sigma, k, VD, delta, hi, he, ri, re, Twi, Twe  = symbols('b, c, z, mu,sigma, k, VD, delta, hi, he, ri, re, Twi, Twe')
a=-VD**2*sigma/(2*delta**2*k)
sol=linsolve([-k*a*log(ri**2)-k*b-ri*hi*a*log(ri)**2-ri*hi*b*log(ri)+ri*hi*c-ri*hi*Twi, -k*a*log(re**2)+k*b-re*he*a*log(re)**2+re*he*b*log(re)+re*he*c-re*he*Twe],(b,c))


print(sol)
