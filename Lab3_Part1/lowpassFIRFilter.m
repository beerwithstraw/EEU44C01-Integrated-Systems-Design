clc
clear
close all

[y, Fs] = audioread('speech_1.wav'); 
% Audioread returns a y:Fs matrix where 
% 'y' represents number of audio channels in the file and  
% 'Fs' represents number of audio samples read
nfft = 2^10; % nfft helps in comparing signals at different frequency
X = fft(y, nfft); % computing discrete fourier transform of 'y' 
fstep = Fs/nfft; % Setting a step value to traverse through the audio samples
fvec = fstep*(0: nfft/2-1); %Calculates the input frequency specified as a vector

[maxYValue, indexAtMaxY] = max(2*abs(X(1:nfft/2)));
maxXValue = fvec(indexAtMaxY(1));

subplot(2,1,1);

plot(fvec,2*abs(X(1:nfft/2)))
title('Single-Sided Amplitude Spectrum of x(t)')
xlabel('Frequency (Hz)')
ylabel('|X(f)|')

db = mag2db(2*abs(X(1:nfft/2)));

subplot(2,1,2);
plot(fvec,db);
xlabel('Frequency (Hz)');
ylabel('Magnitude of DFT [dB]');
title(' Normalized Log Plot of DFT');

Fpass = 250;             % Passband Frequency
Fstop = 390;             % Stopband Frequency
Dpass = 0.4305055021;    % Passband Ripple
Dstop = 0.025118864315;  % Stopband Attenuation
flag  = 'noscale';       % Sampling Flag

% Calculate the order from the parameters using KAISERORD.
[N,Wn,BETA,TYPE] = kaiserord([Fpass Fstop]/(Fs/2), [1 0], [Dstop Dpass]);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);

% Now quantise
lsb = 2^-15; % least significant bit we can hold
int_part = b ./lsb; % how many lsbs in each coefficient
int_part = round(int_part); % round for accuracy
b_q = int_part .* lsb; % quantises the entire vector with no for loop!!
Hd = dfilt.dffir(b); % stores the filter in a filter object
Hd_q = dfilt.dffir(b_q); % the quantised version
freqz(Hd)
freqz(Hd_q)

x = filter(Hd, y);
z = filter(Hd_q, y);
audiowrite('speech_1_filtered.wav', x, Fs)
audiowrite('speech_1_quantised.wav', z, Fs)

% [EOF]
