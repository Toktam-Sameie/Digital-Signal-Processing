% Q6_1
[A_m , Fs_7_m] = audioread('data/main/c7m19.wav');
subplot(2,2,1)
spectrogram(A_m,Fs_7_m,'yaxis')
title('Spectrogram of data')
subplot(2,2,2)
plot(abs(fftshift(fft(A_m))))
title('Fast Fourier Transform of data');

[B_m , Fs_8_m] = audioread('data/main/c8m19.wav');
subplot(2,2,3)
spectrogram(B_m,Fs_8_m,'yaxis')
title('Spectrogram of data')
subplot(2,2,4)
plot(abs(fftshift(fft(B_m))));
title('Fast Fourier Transform of data');

