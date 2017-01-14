testw = wtotal;

if deltafmax ~=0
    for i = 1 : nfish
        w(i) = w(i) + (deltaf(i)/deltafmax); 
    end
end

 w(w > wscale) = wscale;
 w(w < 1) = 1;
 wtotal = (sum(sum(w)));