% Laboratorinis darbas 2, Dovaldas Dovidovič EKSfm-26, 2026-09-17
% Elementarios programos MATLAB funkcijos bei darbo su matricomis įsisavinimas 8 variantas

% 1. Užduotis
% a) 
a=5:2:34;

% b)
b=exp(a);

% c)
c=a ./b;

% d)
d=c';

% 2. Užduotis
% a)
A=[pi/2, 3i; log(2), 2*pi];

% b)
B=[exp(A(1,1)), exp(A(1,2))];
A=[A;B];

% c)
S=sum(A,2);

% 3. Užduotis
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

% a)
x_U1=x(x>U1);

% b)
x_0=x;
x_0(abs(x_0)<U2)=0;

% c)
size_x=size(x);

% d) 
size_x_U1=size(x_U1);

% e)
max_value=max(x_0);
min_value=min(x_0);


