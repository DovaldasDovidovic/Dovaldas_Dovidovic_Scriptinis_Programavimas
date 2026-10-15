%% Laboratorinis darbas nr 6.  Dovaldas Dovidovic EKSfm-26 2 variantas.
%% 2. Globalių Matlab kintamųjų naudojimas
clear
clc
close all

global x y
x=2*pi:-0.1:-2*pi;
y=zeros(size(x));
sin_dalis()
vienetas()

plot(x,y,'--y*')
xlabel('x')
ylabel('y(x)')
title('y(x)=sin(x)/x')
grid on
whos global
