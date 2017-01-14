function [desempenho, balanceamento, estacoes] = fitness(fishb, dimension, M, ciclo,tempostarefas) % Apenas um peixe é o argumento da função (fish(i,:))
    S = mapping(fishb(1,:),dimension); % random key
    corrigida = corrige(S, M); % correção
    [desempenho, balanceamento, estacoes] =  balancing(corrigida, dimension, ciclo, tempostarefas); % realiza balanceamento
    desempenho = desempenho;
end   