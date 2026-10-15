function[s,c]=vienasdu(x)
% vienasdu apskaiciuoja sin(x) arba sin(x) ir cos(x)

if nargin ~=1
    error('funkcijai reikia vieno ivesties argumento')
end

if nargout ==1
    s=sin(x);
elseif nargout ==2
    s=sin(x);
    c=cos(x);
else
    error('reikia vieno arba dvieju isvesties kintamuju')
end


