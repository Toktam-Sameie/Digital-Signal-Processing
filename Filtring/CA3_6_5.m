% Q6_5
[A_m , Fs_7_m] = audioread('data/main/c7m19.wav');
A_Lp_m = filter(Lp,A_m);
A_Bp1_m = filter(Bp1,A_m);
A_Bp2_m = filter(Bp2,A_m);
A_Hp_m = filter(Hp,A_m);
[B_m , Fs_8_m] = audioread('data/main/c8m19.wav');
B_Lp_m = filter(Lp,B_m);
B_Bp1_m = filter(Bp1,B_m);
B_Bp2_m = filter(Bp2,B_m);
B_Hp_m = filter(Hp,B_m);

CH_7_1_m = Div256(A_Lp_m);
CH_7_2_m = Div256(A_Bp1_m);
CH_7_3_m = Div256(A_Bp2_m);
CH_7_4_m = Div256(A_Hp_m);

CH_8_1_m = Div256(B_Lp_m);
CH_8_2_m = Div256(B_Bp1_m);
CH_8_3_m = Div256(B_Bp2_m);
CH_8_4_m = Div256(B_Hp_m);

Corr_1_m = corr(CH_7_1_m,CH_8_1_m);
Lag_1_m =max(Corr_1_m);

Corr_2_m = corr(CH_7_2_m,CH_8_2_m);
Lag_2_m =max(Corr_2_m);

Corr_3_m = corr(CH_7_3_m,CH_8_3_m);
Lag_3_m =max(Corr_3_m);

Corr_4_m = corr(CH_7_4_m,CH_8_4_m);
Lag_4_m =max(Corr_4_m);


subplot(2,2,1)
histogram(abs(Lag_1_m));
title('lag1')
mu1_m = mean(Lag_1_m)
sigma1_m = std(Lag_1_m)

subplot(2,2,2)
histogram(abs(Lag_2_m));
title('lag2')
mu2_m = mean(Lag_2_m)
sigma2_m = std(Lag_2_m)

subplot(2,2,3)
histogram(abs(Lag_3_m));
title('lag3')
mu3_m = mean(Lag_3_m)
sigma3_m = std(Lag_3_m)

subplot(2,2,4)
histogram(abs(Lag_4_m));
title('lag4')
mu4_m = mean(Lag_4_m)
sigma4_m = std(Lag_4_m)

