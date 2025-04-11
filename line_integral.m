clc
clear
syms t x y
f=input('enter the f vector as i and j order in vector form:');
rbar = input('enter the r vector as i and j order in vector
form:');
lim=input('enter the limit of integration:');
vecfi=input('enter the vector field range'); % knowledge of the
curve is essential
drbar=diff(rbar,t);
sub = subs(f,[x,y],rbar);
f1=dot(sub,drbar)
int(f1,t,lim(1),lim(2))
P = inline(vectorize(f(1)), 'x', 'y');
Q = inline(vectorize(f(2)), 'x', 'y')
x = linspace(vecfi(1),vecfi(2), 10); y = x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y,U,V)
hold on
fplot(rbar(1),rbar(2),[lim(1),lim(2)])
axis on
xlabel('x')
ylabel('y') 