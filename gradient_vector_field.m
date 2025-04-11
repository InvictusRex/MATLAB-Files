clc
clear all
syms x y
f=input( 'enter the function f(x,y):');
F=gradient(f)
P = inline(vectorize(F(1)), 'x', 'y');
Q = inline(vectorize(F(2)), 'x','y');
x = linspace(-2, 2, 10);
y = x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y,U,V,1)
axis on xlabel('x')
ylabel('y')
hold on
ezcontour(f,[-2 2]) 