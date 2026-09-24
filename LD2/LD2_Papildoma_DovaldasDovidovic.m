%% Laboratorinis darbas 2 papildoma užduotis Dovaldas Dovidovic EKSfm-26, 2026-09-24
% Variantas 27

% duota matrica
A=[0 1 0 2 3 0 4; 0 0 0 0 0 0 0; 
    0 5 0 6 7 0 8; 0 9 0 1 2 0 3;
    0 0 0 0 0 0 0; 0 4 0 5 6 0 7];
% eilutes tu nenuliniais elementais
eilutes=any(A~=0, 2);

% stulpeliai su nenuliniais elementais
stulpeliai=any(A~=0,1);

% sukuriam matrica B
B = A(eilutes, stulpeliai);

disp('MatricaB:');
disp(B)