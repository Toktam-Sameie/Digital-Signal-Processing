% Q8
M7_1 =  Mult(CH_7_1_m, Wch1);
M8_1 = Mult(CH_8_1_m, Wch1);

M7_2 =  Mult(CH_7_2_m, Wch2);
M8_2 = Mult(CH_8_2_m, Wch2);

M7_3 =  Mult(CH_7_3_m, Wch3);
M8_3 = Mult(CH_8_3_m, Wch3);

M7_4 =  Mult(CH_7_4_m, Wch4);
M8_4 = Mult(CH_8_4_m, Wch4);

D7_1 = Det256(M7_1);
D8_1 = Det256(M8_1);

D7_2 = Det256(M7_2);
D8_2 = Det256(M8_2);

D7_3 = Det256(M7_3);
D8_3 = Det256(M8_3);

D7_4 = Det256(M7_4);
D8_4 = Det256(M8_4);


D7 = [D7_1,D7_2,D7_3,D7_4];
D8 = [D8_1,D8_2,D8_3,D8_4];
subplot(1,2,1)
plot(abs(fftshift(fft(D7))))
subplot(1,2,2)
plot(abs(fftshift(fft(D8))))
% sound(D7,Fs_7)
sound(D8,Fs_8)
audiowrite('Detected_7.wav',D7,Fs_7)
audiowrite('Detected_8.wav',D8,Fs_8)