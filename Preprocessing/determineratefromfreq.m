function rate = determineratefromfreq(sig)
sqi=findsqi(sig);
if(sqi>=0)
    rate=60*max(sig);
else
    rate=0;
end
    