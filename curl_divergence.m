clc
clear all
syms x y z real
F=input( 'enter the vector as i, j and k order in vector form:')
curl_F = curl(F, [x y z])
div_F = divergence(F, [x y z]) 