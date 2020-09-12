function sqi = findsqi(sig)
r=size(sig,1);
lp=0;
bp=0;
hp=0;
thp=0;
thresh=0.9;
threshp=0;
for i=1:r
    if sig(i)>lp && sig(i)<0.1
        lp=sig(i);
    end
    if sig(i)>=0.1 && sig(i)<=0.3
        if sig(i)>bp
            bp=sig(i);
        end
    end
    if sig(i)>hp && sig(i)>0.3
        hp=sig(i);
    end
    if sig(i)>0.3
        thp=thp+1;
    end
    if sig(i)>0.3 && sig(i)>thresh
        threshp=threshp+1;
    end
end
f4=lp/bp;
f1=hp;
f3=abs(bp-lp);
f2=(threshp/thp)*100;
if f4>=3
    sqi=1-((0.5*f3)+(0.25*(f1+f2)));
else
    sqi=1-(0.5*(f1+f2));
end

    