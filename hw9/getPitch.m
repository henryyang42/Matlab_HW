waveFile='low.wav';
[y, fs, nbits]=wavread(waveFile);
index1=22150;
frameSize=512;
index2=index1+frameSize-1;
frame=y(index1:index2);

subplot(4,1,1); plot(y); grid on
title(waveFile);
line(index1*[1 1], [-1 1], 'color', 'r');
line(index2*[1 1], [-1 1], 'color', 'r');
subplot(4,1,2); plot(frame, '.-'); grid on
point=[62, 211];
line(point, frame(point), 'marker', 'o', 'color', 'red');

periodCount=1;
fp=((point(2)-point(1))/periodCount)/fs;	% fundamental period
ff=fs/((point(2)-point(1))/periodCount);	% fundamental frequency
pitch=69+12*log2(ff/440);
fprintf('Fundamental period = %g second\n', fp);
fprintf('Fundamental frequency = %g Hertz\n', ff);
fprintf('Low Pitch = %g semitone\n', pitch);

waveFile='high.wav';
[y, fs, nbits]=wavread(waveFile);
index1=22150;
frameSize=512;
index2=index1+frameSize-1;
frame=y(index1:index2);

subplot(4,1,3); plot(y); grid on
title(waveFile);
line(index1*[1 1], [-1 1], 'color', 'r');
line(index2*[1 1], [-1 1], 'color', 'r');
subplot(4,1,4); plot(frame, '.-'); grid on
point=[60, 145];
line(point, frame(point), 'marker', 'o', 'color', 'red');

periodCount=2;
fp=((point(2)-point(1))/periodCount)/fs;	% fundamental period
ff=fs/((point(2)-point(1))/periodCount);	% fundamental frequency
pitch=69+12*log2(ff/440);
fprintf('Fundamental period = %g second\n', fp);
fprintf('Fundamental frequency = %g Hertz\n', ff);
fprintf('High Pitch = %g semitone\n', pitch);