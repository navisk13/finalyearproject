function sig = meancentre(sig)
m=mean(sig(:));
for i=1:size(sig,1)
    sig(i)=sig(i)-m;
end
    