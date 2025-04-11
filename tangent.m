clc
clear all
syms x
y=input('enter the function f in terms of x:')
x1 = input('Enter x value at which tangent : ');
D=[x1-2, x1+2]
ezplot(y,D)
hold on
yd = diff(y,x);
slope = subs(yd,x,x1);
y1 = subs(y,x,x1);
plot(x1,y1,'ko')
Tgtline = slope*(x-x1)+y1