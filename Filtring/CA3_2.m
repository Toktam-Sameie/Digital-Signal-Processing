% Q2
[A , Fs_7] = audioread('data/Intro/c7Mic3Intro.wav');
A_Lp = filter(Lp,A);
A_Bp1 = filter(Bp1,A);
A_Bp2 = filter(Bp2,A);
A_Hp = filter(Hp,A);
size(A_Lp)
[B , Fs_8] = audioread('data/Intro/c8Mic3Intro.wav');
B_Lp = filter(Lp,B);
B_Bp1 = filter(Bp1,B);
B_Bp2 = filter(Bp2,B);
B_Hp = filter(Hp,B);