clear
close all

[vowel,Fs1] = audioread('A.m4a');
[consonant, Fs2] = audioread('s.m4a');
% sound(vowel, Fs1)
% sound(consonant, Fs2)
vmiddle = vowel(20001:22205);
cmiddle = consonant(20001:22205);
range = 0:49/2204:49;
subplot(2,2,1)
plot(vowel)
xlim([0,45055])
title('Entire Vowel Signal')
subplot(2,2,2)
plot(range,vmiddle)
xlabel('time(ms)')
xlim([0 49])
title('Segment of Vowel Signal')
subplot(2,2,3)
plot(consonant)
xlim([0 20000])
title('Entire Consonant Signal')
subplot(2,2,4)
plot(range,cmiddle)
xlabel('time(ms)')
xlim([0 49])
title('Segment of Consonant Signal')