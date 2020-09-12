function rate = determineratefromsig(sig)
sig=hammingwindow(sig);
sig=meancentre(sig);
sig=freqdom(sig);
sig=normtovalue(sig);
sqi=findsqi(sig);
if(sqi>=0)
    rate=60*max(sig);
else
    rate=0;
end
    
