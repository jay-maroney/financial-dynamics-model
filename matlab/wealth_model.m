function dXdt = wealth_model(~, X, p)

C = X(1);
A = X(2);
D = X(3);

I = p.I;
a = p.a;
b = p.b;
c = p.c;
d = p.d;
e = p.e;
f = p.f;
g = p.g;

dCdt = I + f*A - (a+b+c+d)*C;
dAdt = c*C + (e-f)*A;
dDdt = g*D - d*C;

dXdt = [dCdt; dAdt; dDdt];

end