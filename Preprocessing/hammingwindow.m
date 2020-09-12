function w_new = hammingwindow(sig)
w_new=sig.*hamming(size(sig,1));

