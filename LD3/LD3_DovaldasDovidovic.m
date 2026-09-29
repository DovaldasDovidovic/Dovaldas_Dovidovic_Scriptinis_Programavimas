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
studentai = {'Dovaldas','Jonas', 'Mantas', 'Lukas', 'Osvaldas', 'Edvinas'}
xticklabels(studentai)
ylim([0 10])
xticks(1:6)

grid on

figure(4)
stem(P)
xlabel('Studentas')
ylabel('Pazymys')
title('Studentu egzaminu rezultatai - diskretus')
ylim([0 10])
xlim([0.5 6.5])
xticks(1:6)
studentai = {'Dovaldas','Jonas', 'Mantas', 'Lukas', 'Osvaldas', 'Edvinas'}
xticklabels(studentai)
legend('1 Egzaminas', '2 Egzaminas', '3 Egzaminas', '4 Egzaminas')
grid on 

%% Papildoma uzduotis - Rezultatu grafinis 2D atvaizdavimas 19 variantas
% Duomenys
A = 7;
f = 9;
sigma = 1.2;
U1 = 4.5;
U2 = 2.5;

% laiko vektorius
t=0:0.002:1;

% signalas
s=A*cos(2*pi*f*t);

% triukšmas
n=sigma*randn(size(t));

% signalas su triušmu 
x=s+n;

figure
idx_U1=find(x>U1);

%grafikas 1
subplot(1,2,1)
plot(t,x, 'b-', 'LineWidth',1.2)
hold on
x_0=x;
x_0(abs(x_0)<U2) = 0;
plot(t, x_0, 'y:','LineWidth', 1.5)
yline(U1, '--','U1')
yline(U2,'--','U2')
xlabel('Laikas, s', 'FontSize', 14, 'FontWeight','bold')
ylabel('Itampa, V', 'FontSize', 14, 'FontWeight', 'bold')
title('Pradinis ir filtruotas signalai ')
legend('Pradinis signalas','Filtruotas signalas', 'U1', 'U2')
grid on
xlim([min(t) max(t)])
hold off

% 2 grafikas
subplot(1,2,2)
stem(t(idx_U1),x(idx_U1))
hold on
max_idx=islocalmax(x(idx_U1));
min_idx=islocalmin(x(idx_U1));
plot(t(idx_U1(max_idx)),x(idx_U1(max_idx)),'o','MarkerSize', 12)
plot(t(idx_U1(min_idx)),x(idx_U1(min_idx)),'s','MarkerSize', 12)
xlabel('Laikas, s', 'FontSize',14,'FontWeight','bold')
ylabel('Itampa, V', 'FontSize',14,'FontWeight','bold')
title('Signalo reiksmes virsijancios U1')
legend('x > U1','Maksimumai', 'Minimumai')
grid on
xlim([min(t) max(t)])
hold off










