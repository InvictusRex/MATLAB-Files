clc
clear all
syms x y z real
F=input( 'enter the vector as i,j and k order in vector form:') curl_F = curl(F, [x y z])
if (curl_F ==[0 0 0])
 f = potential(F, [x y z])
else
 sprintf('curl_F is not equal to zero')
end