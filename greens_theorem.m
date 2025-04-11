clc
clear all
syms x y r t
F=input('enter the F vector as i and j order in vector form:');
integrand=diff(F(2),x)-diff(F(1),y);
polarint=r*subs(integrand,[x,y],[r*cos(t),r*sin(t)]);
sol=int(int(polarint,r,0,3),t,0,2*pi);
P = inline(vectorize(F(1)), 'x', 'y');
Q = inline(vectorize(F(2)), 'x', 'y')
x = linspace(-3.2,3.2, 10); y = x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y,U,V)
hold on
fplot(3*cos(t),3*sin(t),[0,2*pi])
axis equal