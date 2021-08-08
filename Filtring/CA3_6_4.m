% Q6_4
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
Lag_1_m =max(Corr_1);

Corr_2_m = corr(CH_7_2_m,CH_8_2_m);
Lag_2_m =max(Corr_2_m);

Corr_3_m = corr(CH_7_3_m,CH_8_3_m);
Lag_3_m =max(Corr_3_m);

Corr_4_m = corr(CH_7_4_m,CH_8_4_m);
Lag_4_m =max(Corr_4_m);
