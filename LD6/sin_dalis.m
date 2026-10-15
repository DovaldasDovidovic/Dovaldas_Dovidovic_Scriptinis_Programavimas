function sin_dalis()
% sin_dalis apskaiciuoja sin(x)/x, kai x nelygus nuliui
global x y
indeksai = x~=0;
y(indeksai)=sin(x(indeksai))./x(indeksai);
end
