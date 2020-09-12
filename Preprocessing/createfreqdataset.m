driver;
data=[];
for i=1:100
    varname="s"+mat2str(i);
    val=evalin('base',varname);
    val=[val;determineratefromfreq(val)];
    data=[data val];
end
trans=transpose(data);
csvwrite('freqdata100.csv',trans);
    
