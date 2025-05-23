clc 
clear all  
syms x y lam real  
f = x^2 + y^2  
g = x+y==1
F = f+lam*g;  
Fd = jacobian(F,[x y lam]);  
[ax,ay,alam] = solve(Fd,x,y,lam);   
ax = double(ax); 
ay = double(ay);  
T = subs(f,{x,y},{ax,ay}); 
T = double(T);  
epxl = min(ax);   
epxr = max(ax);  
epyl = min(ay);   
epyu = max(ay) 
D = [epxl-0.5 epxr+0.5 epyl-0.5 epyu+0.5]  
ezcontourf(f,D)
hold on
h = ezplot(g,D);  
set(h,'Color',[1,0.7,0.9])   
for i = 1:length(T)  
fprintf('The critical point (x,y) is (%1.3f,%1.3f).',ax(i),ay(i))  
fprintf('The value of the function is %1.3f\n',T(i))  
plot(ax(i),ay(i),'k.  ','markersize',15)  
end 
TT = sort(T);  
f_min=TT(1)  
f_max=TT(end)   