clc
clear all
syms r a b
r= input('Enter the radius of the circle')
a= input('Enter the x coordinate of the center')
b= input('Enter the y coordinates of the center')
t = linspace(0, 2*pi, 100);
x = a+r*cos(t);
y = b+r*sin(t);
axis equal
plot(x, y)
xlabel('x-Coordinate')
ylabel('x-Coordinate')
title('(x − a)^2 + (y − b)^2 = r^2')