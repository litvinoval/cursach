
Mdu = 0.144;
Mdm = 0.42;
Ydu = 0.0825;
Zdu = 0.0825;
Ydm = 0.058;
Zdm = 0.058;
Ix = Mdu*(Ydu^2 + Zdu^2) + Mdm*(Ydm^2+Zdm^2);
disp("Ix=")
disp(Ix)


Mp = 2587;
Mr = 3664;
g = 9.8;
%расчет моментов трения

Ap = 3.8*Mp*9.8/10;
disp("Ap=");disp(Ap);
Rp = Mp*100/2*((3.8*9.8)^2+(3.8*9.8)^2)^(1/2)/1000;
disp("Rp="); disp(Rp);
Ar = 3.8*Mr*9.8/10;
disp("Ar=");disp(Ar);
Rr = Mr*100/2*((3.8*9.8)^2+(3.8*9.8)^2)^(1/2)/1000;
disp("Rr="); disp(Rr);



M0 = 7.2;
k1 = 0.0069;
k2 = 0.0035;
k3 = 0.008;
Ay = Ap;  Ax = Ar;
Ry = Rp;  Rx = Rr;
My = M0 + 500*(k1-k2)+k2*Ry+k3*Ay;
disp("My=");
disp(My);
Mx = M0 + 500*(k1-k2)+k2*Rx+k3*Ax;
disp("Mx=");
disp(Mx);

%момент небаланса
R0p = Mp * 100 * 9.81/2/1000;
disp("R0p"); disp(R0p)
R0r = Mr * 100 * 9.81/2/1000;
disp("R0r"); disp(R0r)
Mostp = M0 + k3*R0p;
disp("Mostp"); disp(Mostp)
Mostr = M0 + k3*R0r;
disp("Mostr"); disp(Mostr)

Mnbp=Mostp*(3.8+3.8);
disp("Mnbp"); disp(Mnbp)
Mnbr=Mostr*(3.8+3.8);
disp("Mnbr"); disp(Mnbr)

%неравножесткости
Mynz = Mp*Mp*g*g*3.8*3.8*0.2*10^(-6)/1000/1000*10000;
disp("Mynz");disp(Mynz);

Mxnz = Mr*Mp*g*g*3.8*3.8*0.2*10^(-6)/1000/1000*10000;
disp("Mxnz");disp(Mxnz);

 