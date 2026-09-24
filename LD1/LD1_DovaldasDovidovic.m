% Laboratorinis darbas 1, Dovaldas Dovidovič EKSfm-26, 2026-09-17
%
% Paprastas skriptas
%

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-0-]   |    F_2 [-x-]')

% Pagalbos paieška atlikta naudojant komandų lange įvesta komanda help sin;
% help plot; help title; doc sin; doc plot; doc title; Taip pat pažymėjus
% funkcijas ir spaudžiant FN+F1

% linspace -> doc linspace - sukuria skaičius nuo vieno iki kito vienodais tarpais y = linspace(x1, x2) - sukuria 100 skaiciu nuo x1 iki x2 y = linspace (x1, x2, 2) - nurodai kiek skaiciu pats nori sukurti
% size -> doc size - parodo masyvo ar matricos dydį. sz = size(A); sz = size(A,dim) dim - tikrinama dimensija ,A - matrica. size(A,1) - kiek eiluciu; size(A,2) - kiek stulpeliu
% max -> doc max - suranda ir parodo didžiausią skaičių. 

%
%

