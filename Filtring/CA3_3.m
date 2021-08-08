% Q3
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