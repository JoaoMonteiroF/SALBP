for i = 1:nfish
    %fishcind(i,:) = fish(i,:)+(random*2-1)*stepind;
    %fishcind(i,:) = fish(i,:)+ (rand(1,dimension)*(l_sup-l_inf)+l_inf)*stepind;
    fishcind(i,:) = fish(i,:)+ (rand(1,dimension)*2-1)*stepind;
    
    [c,~,~] = fitness(fishcind(i,:), dimension, M, ciclo, tempostarefas); 
    
    if c > deltaf(i,1)                                % Se houve melhora no fitness 
        
        deltafish(i,:) = fishcind(i,:)-fish(i,:);     % Usado no mov. coletivo instintivo 
        fish(i,:) = fishcind(i,:);                    % O peixe se move
        deltaf(i,1) = c - deltaf(i,1);                % Usado na alimentação
    
    else                                              % Não houve melhora      
        
        deltafish(i,:) = zeros(1,dimension);          % O peixe não se move
        deltaf(i,1) = 0;                              % Deltaf = 0
    
    end;
    
    fish(fish > l_sup) = l_sup;
    fish(fish < l_inf) = l_inf;
 
 end;
 
  %disp('peixe calculado')
        %disp(fishcind)
        %for i = 1 : nfish
            %[c(i),~,~] = fitness(fish(i,:), dimension, M, ciclo, tempostarefas);
        %end
        %disp(c)