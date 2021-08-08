% Q5
[A , Fs_7] = audioread('data/Intro/c7Mic3Intro.wav');
A_Lp = filter(Lp,A);
A_Bp1 = filter(Bp1,A);
A_Bp2 = filter(Bp2,A);
A_Hp = filter(Hp,A);

[B , Fs_8] = audioread('data/Intro/c8Mic3Intro.wav');
B_Lp = filter(Lp,B);
B_Bp1 = filter(Bp1,B);
B_Bp2 = filter(Bp2,B);
B_Hp = filter(Hp,B);

CH_7_1 = Div256(A_Lp);
CH_7_2 = Div256(A_Bp1);
CH_7_3 = Div256(A_Bp2);
CH_7_4 = Div256(A_Hp);

CH_8_1 = Div256(B_Lp);
CH_8_2 = Div256(B_Bp1);
CH_8_3 = Div256(B_Bp2);
CH_8_4 = Div256(B_Hp);

Corr_1 = corr(CH_7_1,CH_8_1);
Lag_1 =max(Corr_1)

Corr_2 = corr(CH_7_2,CH_8_2);
Lag_2 =max(Corr_2);

Corr_3 = corr(CH_7_3,CH_8_3);
Lag_3 =max(Corr_3);

Corr_4 = corr(CH_7_4,CH_8_4);
Lag_4 =max(Corr_4);


subplot(2,2,1)
histogram(abs(Lag_1));
title('lag1')
mu1 = mean(Lag_1)
sigma1 = std(Lag_1)

subplot(2,2,2)
histogram(abs(Lag_2));
title('lag2')
mu2 = mean(Lag_2)
sigma2 = std(Lag_2)

subplot(2,2,3)
histogram(abs(Lag_3));
title('lag3')
mu3 = mean(Lag_3)
sigma3 = std(Lag_3)

subplot(2,2,4)
histogram(abs(Lag_4));
title('lag4')
mu4 = mean(Lag_4)
sigma4 = std(Lag_4)

