clear
close all

[vowel,Fs1] = audioread('A.m4a');
[consonant, Fs2] = audioread('s.m4a');
% sound(vowel, Fs1)
% sound(consonant, Fs2)
vmiddle = vowel(20001:22205);
cmiddle = consonant(20001:22205);
range = 0:49/2204:49;
vDTFT=fft(vmiddle(1:2048));
cDTFT=fft(cmiddle(1:2048));

figure(1)
subplot(2,2,1);
plot(range,vmiddle)
title('Vowel Signal Segment');
xlabel('t(ms)')
xlim([0, 49])
subplot(2,2,2);
spectrogram(vmiddle); title('Spectrogram of Vowel Signal Segment');
subplot(2,2,3);
plot(0:1/1024:1-1/1024,(abs(vDTFT(1:1024)))), title('Linear DFT of The Vowel Signal Segment')
xlabel('*pi')
subplot(2,2,4);
plot(0:1/1024:1-1/1024,20*log10(abs(vDTFT(1:1024))+1)); title('Log DFT of The Vowel Signal Segment');
xlabel('*pi')

figure(2)
subplot(2,2,1);
plot(range,cmiddle); title('Consonant Signal Segment');
xlabel('t(ms)')
xlim([0, 49])
subplot(2,2,2);
spectrogram(cmiddle); title('Spectrogram of Consonant Signal Segment');
subplot(2,2,3);
plot(0:1/1024:1-1/1024,(abs(cDTFT(1:1024)))), title('Linear DFT of The Consonant Signal Segment')
xlabel('*pi')
subplot(2,2,4);
plot(0:1/1024:1-1/1024,20*log10(abs(cDTFT(1:1024))+1)); title('Log DFT of The Consonant Signal Segment');
xlabel('*pi')