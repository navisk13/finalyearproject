function s = freqdom(sig)
f=fft2(sig);
s=fftshift(log(1+abs(f)));
