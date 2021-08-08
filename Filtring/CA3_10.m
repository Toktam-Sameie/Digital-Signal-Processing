% Q10
% Q8
MM7_1 =  Mult(CH_7_1_m, Filtered_Wch1);
MM8_1 = Mult(CH_8_1_m, Filtered_Wch1);

MM7_2 =  Mult(CH_7_2_m, Filtered_Wch2);
MM8_2 = Mult(CH_8_2_m, Filtered_Wch2);

MM7_3 =  Mult(CH_7_3_m, Filtered_Wch3);
MM8_3 = Mult(CH_8_3_m, Filtered_Wch3);

MM7_4 =  Mult(CH_7_4_m, Filtered_Wch4);
MM8_4 = Mult(CH_8_4_m, Filtered_Wch4);

DD7_1 = Det256(M7_1);
DD8_1 = Det256(M8_1);

DD7_2 = Det256(M7_2);
DD8_2 = Det256(M8_2);

DD7_3 = Det256(M7_3);
DD8_3 = Det256(M8_3);

DD7_4 = Det256(M7_4);
DD8_4 = Det256(M8_4);


DD7 = [DD7_1,DD7_2,DD7_3,DD7_4];
DD8 = [DD8_1,DD8_2,DD8_3,DD8_4];
subplot(2,1,1)
plot(abs(fftshift(fft(DD7))))
subplot(2,1,2)
plot(abs(fftshift(fft(DD8))))
sound(DD7,Fs_7)
sound(DD8,Fs_8)
audiowrite('Detected_Smoothed_7.wav',DD7,Fs_7)
audiowrite('Detected_Smoothed_8.wav',DD8,Fs_8)