function [fr]=dial_fft(filename)
  % This fcn reads the file "filename" which contains a
  % time-domain signal.  Then it Fourier transforms the
  % time-domain signal and makes a plot of its spectrum.
  % The plot is dimensioned so it's easy to duiidentify
  % the frequencies of the peaks.
    
  % Read in .ogg file.
  [y,Fs] = audioread(filename);
  
  % Create time axis for use in plot.
  M = length(y);
  dt = 1/Fs;
  t = linspace(0, (M-1)*dt, M)';   % Vector of timestamps

  % Plot time-domain signal
  %figure(1)
  %plot(t, y, 'r')
  %title('Time-domain signal')
  %xlabel('Time (sec)')
  %ylabel('Amplitude (au)')

  % Compute FFT of input time-domain signal
  Yf = fft(y);     % Fast Fourier Transform
  w = linspace(0, (M-1)*(Fs/M), M);   % Vector of frequency axis samples

  % Now extract only the first points from the two vectors
  N = 2000;
  Yf = Yf(1:N);
  w = w(1:N);
  
  % Plot FFT and then label the axes
  %figure(2)
  %plot(w, abs(Yf), 'r')
  %title('Frequency spectrum')  
  %xlabel('Freq (Hz)')
  %ylabel('Amplitude (au)')

  % Find first peak
  [v, idx] = max(abs(Yf));
  %fprintf('Peak freq 1 = %f\n', w(idx))
  fr(1)=w(idx);
  
  % Now zero out first freq and find second one
  Yf(idx) = 0;
  [v, idx] = max(abs(Yf));
  %fprintf('Peak freq 2 = %f\n', w(idx))
  fr(2)=w(idx);
  
end


  
