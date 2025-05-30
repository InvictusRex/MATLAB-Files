clc
clear all 
syms x y 
z = input("Enter the two dimensional function f(x,y): ")
x1 = input("Enter the x value at which the derivative is to be evaluated: ");
y1 = input("Enter the y value at which the derivative is to be evaluated: ");
z1 = subs(subs(z, x, x1), y, y1);
ezsurf(z, [x1-2, x1+2])
f1 = diff(z, x)
slopex = subs(subs(f1, x, x1), y, y1);
[x2,z2] = meshgrid(x1-2:0.25:x1+2, 0:0.5:10);
y2 = y1*ones(size(x2));
hold on 
h1 = surf(x2, y2, z2);
set(h1, "FaceColor", [0.7,0.7,0.7], "EdgeColor", "None")
t = linspace(-1, 1);
x3 = x1+t;
y3 = y1*ones(size(t));
z3 = z1 + slopex*t;
line(x3,y3,z3, "color", "blue", "linewidth", 2)