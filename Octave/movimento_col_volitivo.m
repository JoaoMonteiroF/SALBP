if wtotal > testw    
    for i = 1:nfish
        d = distancia(fish(i,:),baricentro);
        if d < 0.0001
            d = 0.0001;
        end
        
        fish(i,:) = fish(i,:) - (stepvol*rand(1,dimension).*((fish(i,:) - baricentro)/d)); 
    end;    
else
    for i = 1:nfish
         d = distancia(fish(i,:),baricentro);
         if d < 0.0001
            d = 0.0001;
        end
        fish(i,:) = fish(i,:) + (stepvol*rand(1,dimension).*((fish(i,:) - baricentro)/d));
    end;
end; 

fish(fish > l_sup) = l_sup;
fish(fish < l_inf) = l_inf;
