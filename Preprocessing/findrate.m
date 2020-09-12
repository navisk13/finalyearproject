function rate = findrate
maxim=[];
for i=1:100
    varname="sqi"+mat2str(i);
    val=evalin('base',varname);
    if(val>=0.5)
        vname="s"+mat2str(i);
        sig=evalin('base',vname);
        maxim=[maxim;max(sig)];
    end
end
rate=60*median(maxim);
    

