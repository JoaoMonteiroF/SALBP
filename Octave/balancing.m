function [desempenho, balanceamento, estacoes] = balancing(corrigida, dimension, ciclo,tempostarefas)
    estacao = 1;
    operacao = 1;
    j = 1;
    balanceamento = zeros(dimension,dimension);
    while operacao <= dimension
        if somatempo(balanceamento, estacao, dimension, tempostarefas) < ciclo
            balanceamento(estacao, j) = corrigida(1, operacao);
            if somatempo(balanceamento, estacao,dimension,tempostarefas) < ciclo
                j = j + 1;
                operacao = operacao + 1;
            else
                balanceamento(estacao, j) = 0;
                estacao = estacao+1;
                j = 1;
            end;
        end;
    end; 

    somatorio = 0;
    for i = 1 : estacao
        k = 1;
        tk = 0;
        while balanceamento(i,k) ~= 0
            tk = tk + tempostarefas(balanceamento (i,k));
            k = k +1;
        end
        
        somatorio = somatorio + (ciclo - tk)^2;
    end
    estacoes = estacao;
    desempenho = -1*(estacao * sqrt(somatorio));
end