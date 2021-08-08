% Q9
figure(1)
subplot(2,2,1)
plot(abs(fftshift(fft(Wch1))));
title('FFT of Wch1')
subplot(2,2,2)
plot(abs(fftshift(fft(Wch2))));
title('FFT of Wch2')
subplot(2,2,3)
plot(abs(fftshift(fft(Wch3))));
title('FFT of Wch3')
subplot(2,2,4)
plot(abs(fftshift(fft(Wch4))));
title('FFT of Wch4')

Filtered_Wch1 = filter(Lp,Wch1)
Filtered_Wch2 = filter(Lp,Wch2)
Filtered_Wch3 = filter(Lp,Wch3)
Filtered_Wch4 = filter(Lp,Wch4)

figure(2)
subplot(2,2,1)
plot(abs(fftshift(fft(Filtered_Wch1))));
title('FFT of Filtered Wch1')
subplot(2,2,2)
plot(abs(fftshift(fft(Filtered_Wch2))));
title('FFT of Filtered Wch2')
subplot(2,2,3)
plot(abs(fftshift(fft(Filtered_Wch3))));
title('FFT of Filtered Wch3')
subplot(2,2,4)
plot(abs(fftshift(fft(Filtered_Wch4))));
title('FFT of Filtered Wch4')

figure(3)
subplot(2,2,1)
histogram(abs(Wch1));
title('Histogram of Wch1')
subplot(2,2,2)
histogram(abs(Wch2));
title('Histogram of Wch2')
subplot(2,2,3)
histogram(abs(Wch3));
title('Histogram of Wch3')
subplot(2,2,4)
histogram(abs(Wch4));
title('Histogram of Wch4')

figure(4)
subplot(2,2,1)
histogram(abs(Filtered_Wch1));
title('Histogram of Filtered Wch1')
subplot(2,2,2)
histogram(abs(Filtered_Wch2));
title('Histogram of Filtered Wch2')
subplot(2,2,3)
histogram(abs(Filtered_Wch3))
title('Histogram of Filtered Wch3')
subplot(2,2,4)
histogram(abs(Filtered_Wch4));
title('Histogram of Filtered Wch4')
