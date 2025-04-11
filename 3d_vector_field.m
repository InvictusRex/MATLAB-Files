syms x y z
F=input( 'enter the vector as i,j and korder in vector form:')
P = inline(vectorize(F(1)), 'x', 'y','z');
Q = inline(vectorize(F(2)), 'x', 'y','z');
R = inline(vectorize(F(3)), 'x', 'y','z');
x = linspace(-1, 1, 5); y = x;
z=x;
[X,Y,Z] = meshgrid(x,y,z);
U = P(X,Y,Z);
V = Q(X,Y,Z);
W = R(X,Y,Z);
quiver3(X,Y,Z,U,V,W,1.5)
axis on
xlabel('x')
ylabel('y')
zlabel('z') 