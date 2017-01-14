I = zeros(nfish,dimension);


%disp('soma do deltaf')
%disp(sum(deltaf))
if (sum(deltaf) ~= 0)
    for i = 1 : nfish
        I(i,:) = I(i,:) + deltafish(i,:)*deltaf(i);
    end
    I = I/sum(deltaf);
end

fish = fish + I;

fish(fish > l_sup) = l_sup;
fish(fish < l_inf) = l_inf;
