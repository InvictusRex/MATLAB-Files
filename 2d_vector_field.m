clc
clear all
syms x y
F=input( 'enter the vector as i, and j order in vector form:');
P = inline(vectorize(F(1)), 'x', 'y');
Q = inline(vectorize(F(2)), 'x', 'y');
x = linspace(-1, 1, 10);
y = x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y,U,V,1)
axis on
xlabel('x')
ylabel('y') 