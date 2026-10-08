%% Laboratorinis darbas nr.5 Dovaldas Dovidovic EKSfm-26
%% Kiti duomenų tipai ir operacijų nuoseklumas 26 variantas

clear
clc 
close all 

% 1. strukturos

studentai=struct();

studentai(1).vardas='Dovaldas';
studentai(1).pavarde='Dovidovic';
studentai(1).grupe='EKSfm-26';
studentai(1).pazymiai=[8 9 9; 5 5 6; 10 7 6];

studentai(2).vardas='Mantas';
studentai(2).pavarde='Mantinis';
studentai(2).grupe='EKSfm-26';
studentai(2).pazymiai=[8 9 9; 7 5 6; 8 7 7];

studentai(3).vardas='Jonas';
studentai(3).pavarde='Joninis';
studentai(3).grupe='EKSfm-26';
studentai(3).pazymiai=[8 5 9; 6 5 6; 10 5 6];


disp('pries pakeitima')
disp(studentai(3).pazymiai)

studentai(3).pazymiai(1,1)=10;

disp('po pakeitimo')
disp(studentai(3).pazymiai)


% 2. srauto valdymo konstruktoriai 
A = round(10*rand+1);
spejimas=input('Ivesk spejima:');
while spejimas~=A
    if spejimas< A
        disp('skaicius per mazas')
    else 
        disp('skaicius per didelis')
    end
    spejimas=input('bandykit dar kart');
end
disp('atspejot!')

%% Operaciju programoje MATLAB nuoseklumo valdymo isisavinimas 22var.

masyvas1=[];
masyvas2=[];

while true
    a=round(rand*5);
    b=round(rand*7);
    masyvas1(end+1)=a;
    masyvas2(end+1)=b;

    if a==b
        break
    end
end

figure
plot(masyvas1,'-o')
hold on
plot(masyvas2,'-s')

xlabel('generavimo numeris')
ylabel('sugeneruotas skaicius')
title('sugeneruotu skaiciu kitimas')
legend('round(rand*5)','round(rand*7)')
grid on
hold off