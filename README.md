# Consultoria_ENEM
 O pesquisador Renato Dias entrou em contato com a PIXRJ para realização de uma consultoria sobre os microdados do ENEM
 
 # Introdução
 Nesta consultoria temos o objetivo de traçar o perfil dos participantes do ENEM 2016, que obedeciam a características de interesse selecionadas pelo cliente, que estariam aptos a ingressar no curso de Pedagogia na UFF na primeira chamada do ENEM 2017. Na seção 1 descrevemos o universo de estudo e a forma como foram tratados os dados, enviados pelo cliente. Na seção 2 apresentamos uma análise descritiva dos dados coletados e, por fim, na seção 3 tecemos nossas conclusões sobre o problema abordado.

O problema apresentado inicialmente era gerar análises sobre os candidatos do ENEM 2016, ou seja, trabalhar com um grande volume de dados. 

A primeira etapa foi limpar o banco de dados, mantendo o registro apenas dos candidatos que obedeciam as características de interesse, definidas pelo cliente, sendo estes os candidatos:
* Pertencentes à Região Sudeste;
* Que participaram dos dois dias de prova;
* Que não estavam fazendo ENEM apenas como treino;
* Aptos a realizar o SISU, ou seja, que já terminaram ou que terminariam o ensino médio em 2016.

A segunda etapa foi selecionar as características sociodemográficas predeterminadas pelo cliente, além de adicionar a característica sobre a Unidade Federativa do candidato.
* Raça;
* Sexo;
* Idade;
* Tipo de escola que frequentou durante o ensino médio;
* Números de pessoas que moram na mesma casa;
* Escolaridade da mãe;
* Situação de trabalho remunerado;
* Unidade Federativa.

O cliente anseia separar os candidatos aprovados no curso de pedagogia da UFF na primeira chamada do ENEM 2017 e a população geral, que seriam todos os candidatos restantes após os tratamentos da primeira etapa. Para tal, foi criado uma variável sobre a cota do participante, com ajuda da tabela que está no Anexo 1, como auxílio, a característica sobre a renda familiar foi utilizada. 

Para criar a variável sobre aprovação, foi necessário a seleção das variáveis que contém as notas de cada prova. Sabendo a cota do candidato, e considerando que cada um só pode participar de uma cota, foi criado a variável de aprovados e não aprovados. Os candidatos aprovados deveriam possuir nota superior à nota de corte, além de nota superior à mínima para cada prova. A nota de corte é baseada na fórmula disponível no Anexo 1 e as notas mínimas para cada prova são apresentadas na tabela no Anexo 2.

