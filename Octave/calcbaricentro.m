soma = 0;
for i = 1 : nfish
    soma = soma + fish(i,:)*w(i);
end

baricentro = soma/wtotal;