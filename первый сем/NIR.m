Kc = 1.7*10.^6;
disp(Kc);
Da = 37.2;
Iplat = 420;
R = 1*10.^8;
Tplat = Iplat/Da;

Iramki = 0.9;
Tramki = (Iramki/R).^(1/2);
KsiRamki = Da/(2*(Iramki*R)^1/2);
TramkiSQR = Iramki/R;
W1 = tf([34800000],[1]);
W2 = tf([0.004 1],[0.0004 1]);
W3 = tf([1], [0.00004 1]);
W4 = tf([1],[232.8 56.5 0]);

W14 = series(W4, W1);
W142 = series(W14, W2);
W1423 = series(W142,W3);
bode(W1423, {0.001,100000})
grid on