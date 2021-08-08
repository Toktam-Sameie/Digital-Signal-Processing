% Q1
[A , Fs_7] = audioread('data/Intro/c7Mic3Intro.wav');
subplot(2,2,1)
spectrogram(A,Fs_7,'yaxis')
title('Spectrogram of data')
subplot(2,2,2)
plot(abs(fftshift(fft(A))))
title('Fast Fourier Transform of data');

[B , Fs_8] = audioread('data/Intro/c8Mic3Intro.wav');
subplot(2,2,3)
spectrogram(B,Fs_8,'yaxis')
title('Spectrogram of data')
subplot(2,2,4)
plot(abs(fftshift(fft(B))));
title('Fast Fourier Transform of data');

