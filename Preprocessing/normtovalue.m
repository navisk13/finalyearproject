function a = normtovalue(a)
a = a * sqrt( max(a)) / sqrt( sum( a.^2 ) );
