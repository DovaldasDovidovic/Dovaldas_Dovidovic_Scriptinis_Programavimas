clc
clear all
%% Laboratorinis darbas NR3, Rezultatų grafinis 2D atvaizdavimas, 8 variantas. Dovaldas Dovidovic EKSfm-26.

% 1. Užduotis
% a)
figure(1)
x=0:0.1:2*pi;
y=x.^3+tan(x);

plot(x,y, 'b-o');

xlabel('x')
ylabel('f(x)')
title('f(x)=x^3+tan(x)')
axis([min(x), max(x), min(y), max(y)])
grid on 
% b)
figure(2)
y1=exp(x);
y2=exp(3*x);
y3=exp(5*x);

plot(x, y1, 'r', x, y2, 'g', x, y3, 'b')
xlabel('x')
ylabel('f(x)')
title('exp funkcijos')
legend('e^x', 'e^{3x}', 'e^{5x}')
axis([min(x) max(x) min([y1 y2 y3]) max([y1 y2 y3])])
grid on 

% 2. Užduotis 
% a)

P=[8 5 3 9;
    9 6 8 9;
    4 3 6 1;
    7 9 7 9;
    2 3 2 1;
    10 9 8 7;]
figure(3)
bar(P)
xlabel('Studentas')
ylabel('Pazymys')
title('Studentu egzaminu rezultatai')










