%Implementação do FSS para resolver SALBP
%04/01/2016

clc;
clear;

numeroDeReplicas = 1;
totalReplicas = 450;
while numeroDeReplicas<=totalReplicas

%load 'preced.mat';
%preced = TestProblemGunther;
%load 'tempostarefas.mat';
%tempostarefas = TestProblemGunther1;

ID = 1;

switch ID

  case 1
  
    tempostarefas = [504; 472; 532; 519; 315; 330; 651; 534; 618; 351; 561; 556; 527; 459; 459; 414; 550; 363; 809; 586];
    preced = [1,7; 2,7; 3,7; 4,7; 5,8; 6,9; 7,10; 7,11; 7,12; 7,13; 8,14; 8,15; 14,16; 16,17; 16,18; 16,19; 16,20];

    savefile = 'Resultados_FSSoriginal_SmallDataSet.mat';
  
  case 2
    
    tempostarefas = [26; 105; 98; 154; 251; 36; 255; 94; 204; 26; 155; 32; 52; 25; 155; 45; 37; 161; 61; 136; 121; 207; 120; 
    34; 30; 69; 105; 306; 127; 166; 80; 151; 167; 21; 105; 199; 114; 150; 164; 251; 248; 21; 194; 32; 83; 149; 29; 178; 70; 109];

    preced = [1,8; 2,9; 3,26; 4,10; 6,7; 6,10; 6,11; 6,12; 6,13; 7,36; 8,17; 9,18; 10,14; 10,20; 10,21; 12,15; 12,22; 13,16; 13,19; 
    13,22; 14,36; 15,36; 16,23; 18,26; 20,24; 20,25; 21,39; 21,40; 23,27; 24,50; 25,28; 25,30; 26,29; 27,31; 28,32; 28,33; 29,34; 30,35; 
    31,36; 32,37; 33,38; 33,41; 34,40; 35,39; 36,42; 36,43; 36,44; 36,45; 37,47; 38,46; 39,48; 39,49; 41,50];

    savefile = 'Resultados_FSSoriginal_MediumDataSet.mat';
  
  case 3

    tempostarefas = [128; 282; 113; 28; 97; 144; 310; 31; 159; 104; 181; 29; 59; 107; 105; 132; 85; 231; 83; 177; 340; 144;
    79; 164; 65; 317; 92; 185; 215; 85; 159; 282; 75; 136; 222; 186; 235; 74; 104; 218; 262; 89; 51; 52; 276; 99; 278; 97; 123;
    300; 46; 63; 258; 41; 223; 58; 122; 173; 131; 143; 104; 164; 106; 194; 129; 142; 97; 167; 40; 159; 27; 177; 73; 141; 113; 
    48; 88; 121; 281; 60; 241; 135; 31; 289; 27; 230; 115; 187; 21; 111; 23; 209; 107; 220; 241; 275; 143; 198; 189; 218];

    preced = [1,45; 2,45; 3,45; 4,13; 5,15; 6,14; 7,16; 8,17; 8,47; 9,18; 10,12; 11,19; 12,60; 13,20; 14,21; 15,20; 16,22; 17,23;
    17,24; 17,25; 17,26; 17,90; 19,27; 20,60; 21,32; 22,28; 23,31; 24,29; 24,32; 24,33; 25,37; 26,35; 27,30; 27,34; 27,36; 28,45; 
    29,60; 30,60; 31,38; 32,42; 33,39; 34,43; 35,40; 35,41; 35,77; 36,44; 38,45; 39,45; 40,45; 41,45; 42,49; 42,51; 42,52; 42,53; 
    43,46; 43,47; 44,48; 44,50; 44,54; 45,55; 45,56; 45,57; 45,58; 45,59; 46,60; 47,61; 48,62; 53,64; 53,65; 54,63; 55,73; 59,72; 
    59,74; 60,66; 60,67; 60,68; 60,69; 61,70; 62,71; 66,78; 66,80; 67,77; 69,81; 70,75; 71,76; 73,79; 75,82; 76,84; 77,83; 79,86;
    81,85; 82,88; 83,89; 84,90; 85,87; 85,92; 86,91; 86,93; 86,94; 87,95; 88,96; 89,97; 90,100; 92,99; 93,98];

    savefile = 'Resultados_FSSoriginal_LargeDataSet.mat';

end

%ID = 1;

%switch ID
  %case 1
    %wscale = 1000;
    %stepIndInicial= 2;
    %stepVolInicial = 0.2;
    %savefile = 'DOE_1_FSSoriginal_LargeDataSet.mat';
    
  %case 2 
     %wscale = 10000;
     %stepIndInicial= 2;
     %stepVolInicial = 0.2;
     %savefile = 'DOE_2_FSSoriginal_LargeDataSet.mat';
     
 %case 3
     %wscale = 1000;
     %stepIndInicial= 2;
     %stepVolInicial = 20;
     %savefile = 'DOE_3_FSSoriginal_LargeDataSet.mat';
 
 %case 4
     %wscale = 10000;
     %stepIndInicial= 2;
     %stepVolInicial = 20;
     %savefile = 'DOE_4_FSSoriginal_LargeDataSet.mat';
 
 %case 5 
     %wscale = 1000;
     %stepIndInicial= 20;
     %stepVolInicial = 0.2;
     %savefile = 'DOE_5_FSSoriginal_LargeDataSet.mat';
    
%case 6

     %wscale = 10000;
     %stepIndInicial= 20;
     %stepVolInicial = 0.2;
     %savefile = 'DOE_6_FSSoriginal_LargeDataSet.mat';

%case 7
     %wscale = 1000;
     %stepIndInicial= 20;
     %stepVolInicial = 20;
     %savefile = 'DOE_7_FSSoriginal_LargeDataSet.mat';

%case 8
     %wscale = 10000;
     %stepIndInicial= 20;
     %stepVolInicial = 20;
     %savefile = 'DOE_8_FSSoriginal_LargeDataSet.mat';
     
%end

nfish = 60;
maxit = 500;
l_inf = -100;
l_sup = 100;
stepIndFinal = 0;
stepVolFinal = 0;
dimension = length(tempostarefas);
ciclo = 1000;

wscale = 10000;
stepIndInicial= 2;
stepVolInicial = 0.2;

% Criação dos vetores

fish = zeros(nfish, dimension);                 % Matriz de peixes
w = zeros(nfish, 1);                            % Peso de cada peixe
baricentro = zeros(1, dimension);               % Baricento do cardume
instintivo = zeros(1, dimension);               % Direção resultante
deltafish = zeros(nfish, dimension);            % Variação de posição de cada peixe
deltaf = -100000*ones(nfish,1);                       % Variação de fitness de cada peixe 
fishb = zeros(1, dimension);                    % Posição do peixe com melhor fitness
fishcind = zeros(nfish, dimension);             % Posição resultante do movimento individual   
M = zeros(dimension+1,dimension);
M = matrizpreced(preced,dimension);
balanceamento = zeros(dimension,dimension); 
balanc = zeros(dimension,dimension);

stepind = stepIndInicial;
stepvol = stepVolInicial;


% Inicialização 
  
fishb = -100000*ones(1,dimension);
fitbest = -100000;


baricentro = zeros(1,dimension);
fish = rand(nfish,dimension)*(l_sup-l_inf)+l_inf;
w = (wscale/2)*ones(nfish,1);
wtotal = nfish*(wscale/2);

%Schooling

k = 1;
interacao = 0;
    
for counter = 1:maxit
        %disp('peixe antes')
        %disp(fish)
        %for i = 1 : nfish
            %[c(i),~,~] = fitness(fish(i,:), dimension, M, ciclo, tempostarefas);
        %end
        %disp(c)
    movimento_individual;
    deltafmax = max(deltaf);
    alimentacao;
        %disp('peixe depois')
        %disp(fish)
        %for i = 1 : nfish
            %[c(i),~,~] = fitness(fish(i,:), dimension, M, ciclo, tempostarefas);
        %end
        %disp(c)
    movimento_col_instintivo;
        %disp(fish)
    calcbaricentro;
    movimento_col_volitivo;
      %disp(fish)
    melhorpeixe;
      %disp(fish)
    atualizar_stepind;
    atualizar_stepvol;
    DOE;
end

%idletime = idle(balanceamento,dimension,estacao,tempostarefas,ciclo); % calcula idle time

vetorEstacao(numeroDeReplicas) = estacao;
vetorFitbest(numeroDeReplicas) = (fitbest/(-1*estacao));
vetorInteracao(numeroDeReplicas) = interacao;

numeroDeReplicas = numeroDeReplicas + 1;
end

%numeradorDaVarianciaEstacoes=0;
%numeradorDaVarianciaInteracoes=0;
%numeradorDaVarianciaSmoothness=0;

%for i=1:totalReplicas
    %numeradorDaVarianciaEstacoes=numeradorDaVarianciaEstacoes+(vetorEstacao(i)-(sum(vetorEstacao)/totalReplicas))^2;
    %numeradorDaVarianciaInteracoes=numeradorDaVarianciaInteracoes+(vetorInteracao(i)-(sum(vetorInteracao)/totalReplicas))^2;
    %numeradorDaVarianciaSmoothness=numeradorDaVarianciaSmoothness+(vetorFitbest(i)-(sum(vetorFitbest)/totalReplicas))^2;
%end

%varianciaEstacoes=numeradorDaVarianciaEstacoes/totalReplicas;
%varianciaInteracoes=numeradorDaVarianciaInteracoes/totalReplicas;
%varianciaSmoothness=numeradorDaVarianciaSmoothness/totalReplicas;

%fprintf('Numero de estacoes em cada replica:\n');

%for i= 1 : totalReplicas
    %fprintf('Replica %d ', i)
    %fprintf('= %d \n',vetorEstacao(i));
%end

%fprintf('Menor numero de estacoes = %d \n', min(vetorEstacao));
%fprintf('Maior numero de estacoes = %d \n', max(vetorEstacao));

%fprintf('Media do numero de estacoes = %d \n', sum(vetorEstacao)/totalReplicas);


%fprintf('Desvio Padrao do numero de estacoes = %d \n',sqrt(varianciaEstacoes));
     

%fprintf('Numero de interacoes em cada replica:\n');

%for i= 1 : totalReplicas
    %fprintf('Replica %d ', i)
    %fprintf('= %d \n',vetorInteracao(i));
%end

%fprintf('Menor numero de interacoes = %d \n', min(vetorInteracao));
%fprintf('Maior numero de interacoes = %d \n', max(vetorInteracao));

%fprintf('Media do numero de interacoes = %d \n', sum(vetorInteracao)/totalReplicas);

%fprintf('Desvio Padrao do numero de interacoes = %d \n',sqrt(varianciaInteracoes));

%fprintf('Smoothness em cada replica:\n');

%for i= 1 : totalReplicas
    %fprintf('Replica %d ', i)
    %fprintf('= %d \n',vetorFitbest(i));
%end

%fprintf('Menor Smoothness = %d \n', min(vetorFitbest));
%fprintf('Maior Smoothness = %d \n', max(vetorFitbest));

%fprintf('Media do Smoothness = %d \n', sum(vetorFitbest)/totalReplicas);

%fprintf('Desvio Padrao do numero do Smoothness = %d \n',sqrt(varianciaSmoothness));

save(savefile,'vetorFitbest','vetorInteracao','vetorEstacao');
