for j = 1:nfish
      [deltaf(j), balanc, station] = fitness(fish(j,:), dimension, M, ciclo, tempostarefas);
 
      if deltaf(j) > fitbest
        fishb = fish(j,:);
        fitbest = deltaf(j);
        balanceamento = balanc;
        estacao = station;
      end;
end;    