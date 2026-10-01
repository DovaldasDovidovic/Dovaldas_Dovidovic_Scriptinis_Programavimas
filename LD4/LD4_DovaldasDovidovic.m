%%Laboratorinis
%%darbas Rezultatų
%%grafinis 3D atvaizdavimas 2 variantas. Dovaldas Dovidovič 

%1 a)
figure(1)
x = -2:0.1:1;
y = -2:0.1:1;
[X,Y] = meshgrid(x,y);
Z=1-2*X.^2-3*Y.^2;
surf(X,Y,Z);
shading interp
colormap(gray)
xlabel('x')
ylabel('y')
zlabel('f(x,y')
title('f(x,y)=1-2*x^2-3*y^2')
view(78,78)
grid on

%1 b)
figure(2)
x=(2*rand(1,200)-1)*sqrt(pi/2);
y=(2*rand(1,200)-1)*sqrt(pi/2);
[X,Y] = meshgrid(x,y);
Z=sin(X.^2+Y.^2);
surf(X,Y,Z);
shading interp
colormap(gray)
xlabel('x')
ylabel('y')
zlabel('f(x,y')
title('f(x,y)=sin(x^2+y^2)')
view(45,45)
grid on 

%%Rezultatu grafinis 3D atvaizdavimas 3 variantas. 

figure(3)
x = -2:0.1:1;
y = -2:0.1:1;
[X,Y] = meshgrid(x,y);
Z=1-(X.^2+Y.^2);
surf(X,Y,Z);
shading interp
colormap(autumn)
grid on 

figure(4)
x = -2:0.1:1;
y = -2:0.1:1;
[X,Y] = meshgrid(x,y);
Z=1-(X.^2+Y.^2);
surf(X,Y,Z);
shading interp
colormap(copper)
grid on 

figure(5)
x = -2:0.1:1;
y = -2:0.1:1;
[X,Y] = meshgrid(x,y);
Z=1-(X.^2+Y.^2);
surf(X,Y,Z);
shading interp
colormap(bone)
grid on 

