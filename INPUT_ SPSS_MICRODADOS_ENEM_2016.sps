/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2016                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2016     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2016.csv no diretório C:\ do computador.	                  */
/*							 */ 
/*							 */
/* Para a leitura dos microdados é necessário a seleção do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							   */
/*******************************************************************************************************/



GET DATA
  /TYPE=TXT
  /FILE="C:\MICRODADOS_ENEM_2016.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
  NU_INSCRICAO F21.0
  NU_ANO F4.0
  CO_MUNICIPIO_RESIDENCIA F7.0
  NO_MUNICIPIO_RESIDENCIA A32
  CO_UF_RESIDENCIA F2.0
  SG_UF_RESIDENCIA A2
  NU_IDADE F2.0
  TP_SEXO A1
  TP_ESTADO_CIVIL F1.0
  TP_COR_RACA F1.0
  TP_NACIONALIDADE F2.0
  CO_MUNICIPIO_NASCIMENTO F7.0
  NO_MUNICIPIO_NASCIMENTO A32
  CO_UF_NASCIMENTO F2.0
  SG_UF_NASCIMENTO A2
  TP_ST_CONCLUSAO F1.0
  TP_ANO_CONCLUIU F2.0
  TP_ESCOLA F1.0
  TP_ENSINO F1.0
  IN_TREINEIRO F1.0
  CO_ESCOLA F8.0
  CO_MUNICIPIO_ESC F7.0
  NO_MUNICIPIO_ESC A32
  CO_UF_ESC F2.0
  SG_UF_ESC A2
  TP_DEPENDENCIA_ADM_ESC F1.0
  TP_LOCALIZACAO_ESC F1.0
  TP_SIT_FUNC_ESC F1.0
  IN_BAIXA_VISAO F1.0
  IN_CEGUEIRA F1.0
  IN_SURDEZ F1.0
  IN_DEFICIENCIA_AUDITIVA F1.0
  IN_SURDO_CEGUEIRA F1.0
  IN_DEFICIENCIA_FISICA F1.0
  IN_DEFICIENCIA_MENTAL F1.0
  IN_DEFICIT_ATENCAO F1.0
  IN_DISLEXIA F1.0
  IN_DISCALCULIA F1.0
  IN_AUTISMO F1.0
  IN_VISAO_MONOCULAR F1.0
  IN_OUTRA_DEF F1.0
  IN_SABATISTA F1.0
  IN_GESTANTE F1.0
  IN_LACTANTE F1.0
  IN_IDOSO F1.0
  IN_ESTUDA_CLASSE_HOSPITALAR F1.0
  IN_SEM_RECURSO F1.0
  IN_BRAILLE F1.0
  IN_AMPLIADA_24 F1.0
  IN_AMPLIADA_18 F1.0
  IN_LEDOR F1.0
  IN_ACESSO F1.0
  IN_TRANSCRICAO F1.0
  IN_LIBRAS F1.0
  IN_LEITURA_LABIAL F1.0
  IN_MESA_CADEIRA_RODAS F1.0
  IN_MESA_CADEIRA_SEPARADA F1.0
  IN_APOIO_PERNA F1.0
  IN_GUIA_INTERPRETE F1.0
  IN_MACA F1.0
  IN_COMPUTADOR F1.0
  IN_CADEIRA_ESPECIAL F1.0
  IN_CADEIRA_CANHOTO F1.0
  IN_CADEIRA_ACOLCHOADA F1.0
  IN_PROVA_DEITADO F1.0
  IN_MOBILIARIO_OBESO F1.0
  IN_LAMINA_OVERLAY F1.0
  IN_PROTETOR_AURICULAR F1.0
  IN_MEDIDOR_GLICOSE F1.0
  IN_MAQUINA_BRAILE F1.0
  IN_SOROBAN F1.0
  IN_MARCA_PASSO F1.0
  IN_SONDA F1.0
  IN_MEDICAMENTOS F1.0
  IN_SALA_INDIVIDUAL F1.0
  IN_SALA_ESPECIAL F1.0
  IN_SALA_ACOMPANHANTE F1.0
  IN_MOBILIARIO_ESPECIFICO F1.0
  IN_MATERIAL_ESPECIFICO F1.0
  IN_NOME_SOCIAL F1.0
  IN_CERTIFICADO F1.0
  NO_ENTIDADE_CERTIFICACAO A90
  CO_UF_ENTIDADE_CERTIFICACAO F2.0
  SG_UF_ENTIDADE_CERTIFICACAO A2
  CO_MUNICIPIO_PROVA F7.0
  NO_MUNICIPIO_PROVA A27
  CO_UF_PROVA F2.0
  SG_UF_PROVA A10
  TP_PRESENCA_CN F1.0
  TP_PRESENCA_CH F1.0
  TP_PRESENCA_LC F1.0
  TP_PRESENCA_MT F1.0
  CO_PROVA_CN F3.0
  CO_PROVA_CH F3.0
  CO_PROVA_LC F3.0
  CO_PROVA_MT F3.0
  NU_NOTA_CN COMMA8.2
  NU_NOTA_CH COMMA8.2
  NU_NOTA_LC COMMA8.2
  NU_NOTA_MT COMMA8.2
  TX_RESPOSTAS_CN A45
  TX_RESPOSTAS_CH A45
  TX_RESPOSTAS_LC A50
  TX_RESPOSTAS_MT A45
  TP_LINGUA F1.0
  TX_GABARITO_CN A45
  TX_GABARITO_CH A45
  TX_GABARITO_LC A50
  TX_GABARITO_MT A45
  TP_STATUS_REDACAO F2.0
  NU_NOTA_COMP1 F3.0
  NU_NOTA_COMP2 F3.0
  NU_NOTA_COMP3 F3.0
  NU_NOTA_COMP4 F3.0
  NU_NOTA_COMP5 F3.0
  NU_NOTA_REDACAO F4.0
  Q001 A1
  Q002 A1
  Q003 A1
  Q004 A1
  Q005 F2.0
  Q006 A1
  Q007 A1
  Q008 A1
  Q009 A1
  Q010 A1
  Q011 A1
  Q012 A1
  Q013 A1
  Q014 A1
  Q015 A1
  Q016 A1
  Q017 A1
  Q018 A1
  Q019 A1
  Q020 A1
  Q021 A1
  Q022 A1
  Q023 A1
  Q024 A1
  Q025 A1
  Q026 A1
  Q027 A1
  Q028 A1
  Q029 F1.0
  Q030 F1.0
  Q031 F1.0
  Q032 F1.0
  Q033 F1.0
  Q034 F1.0
  Q035 F1.0
  Q036 F1.0
  Q037 F1.0
  Q038 F1.0
  Q039 F1.0
  Q040 F1.0
  Q041 F1.0
  Q042 A1
  Q043 A1
  Q044 A1
  Q045 A1
  Q046 A1
  Q047 A1
  Q048 A1
  Q049 A1
  Q050 A1.
CACHE.
EXECUTE.
DATASET NAME ENEM_16 WINDOW=FRONT.


VARIABLE LABELS
NU_INSCRICAO			"Número de inscrição"
NU_ANO	                  		"Ano do Enem"
CO_MUNICIPIO_RESIDENCIA		"Código do município de residência"
NO_MUNICIPIO_RESIDENCIA		"Nome do município de residência"
CO_UF_RESIDENCIA			"Código da Unidade da Federação de residência"
SG_UF_RESIDENCIA			"Sigla da Unidade da Federação de residência"
IN_ESTUDA_CLASSE_HOSPITALAR	"Indicador de inscrição em Unidade Hospitalar"
IN_TREINEIRO 			 "Indica se o inscrito fez a prova com intuito de apenas treinar seus conhecimentos"
CO_ESCOLA			"Código da Escola"
CO_MUNICIPIO_ESC 			"Código Município Escola"
NO_MUNICIPIO_ESC			"Nome do município da escola"
CO_UF_ESC			"Código da Unidade da Federação da escola"
SG_UF_ESC			"Sigla da Unidade da Federação da escola"
TP_DEPENDENCIA_ADM_ESC		"Dependência administrativa (Escola)"
TP_LOCALIZACAO_ESC		"Localização (Escola)"
TP_SIT_FUNC_ESC			"Situação de funcionamento (Escola)"
NU_IDADE         			"Idade"
TP_SEXO	              			    "Sexo"
TP_NACIONALIDADE			"Nacionalidade"
CO_MUNICIPIO_NASCIMENTO		"Código do município de nascimento"
NO_MUNICIPIO_NASCIMENTO		"Nome do município de nascimento"
CO_UF_NASCIMENTO			"Código da Unidade da Federação de nascimento"
SG_UF_NASCIMENTO			"Sigla da Unidade da Federação de nascimento"
TP_ST_CONCLUSAO			"Situação de conclusão do Ensino Médio"
TP_ANO_CONCLUIU			"Ano de Conclusão do Ensino Médio"
TP_ESCOLA			"Tipo de escola do Ensino Médio"
TP_ENSINO			"Tipo de instituição que concluiu ou concluirá o Ensino Médio"
TP_ESTADO_CIVIL			"Estado Civil"
TP_COR_RACA			"Cor/raça"
IN_BAIXA_VISAO			"Indicador de baixa visão"
IN_CEGUEIRA			"Indicador de cegueira"
IN_SURDEZ	              			"Indicador de surdez"
IN_DEFICIENCIA_AUDITIVA		"Indicador de deficiência auditiva"
IN_SURDO_CEGUEIRA	          		"Indicador de surdo-cegueira"
IN_DEFICIENCIA_FISICA		"Indicador de deficiência física"
IN_DEFICIENCIA_MENTAL		"Indicador de deficiência mental"
IN_DEFICIT_ATENCAO			"Indicador de déficit de atenção"
IN_DISLEXIA			"Indicador de dislexia"
IN_GESTANTE			"Indicador de gestante"
IN_LACTANTE			"Indicador de lactante"
IN_IDOSO    			"Indicador de inscrito idoso"
IN_DISCALCULIA			"Indicador de discalculia"
IN_AUTISMO			"Indicador de autismo"
IN_VISAO_MONOCULAR		"Indicador de visão monocular"
IN_SABATISTA			"Indicador de solicitação de prova aplicada em horário diferenciado para os guardadores dos sábados"
IN_OUTRA_DEF			"Indicador de outra deficiência ou condição especial"
IN_SEM_RECURSO     			"Indicador de inscrito que não requisitou nenhum recurso"
IN_BRAILLE			"Indicador de solicitação de prova em braille"
IN_AMPLIADA_24			"Indicador de solicitação de prova super ampliada com fonte tamanho 24"
IN_AMPLIADA_18			"Indicador de solicitação de prova prova ampliada com fonte tamanho 18"
IN_LEDOR	                 			"Indicador de solicitação de auxílio de ledor"
IN_ACESSO			"Indicador de solicitação de sala de fácil acesso"
IN_TRANSCRICAO			"Indicador de solicitação para transcrição"
IN_LIBRAS	       			"Indicador de solicitação de Tradutor-Intérprete Libras"
IN_LEITURA_LABIAL			"Indicador de solicitação de leitura labial"
IN_MESA_CADEIRA_RODAS		"Indicador de solicitação de mesa para cadeira de rodas"
IN_MESA_CADEIRA_SEPARADA		"Indicador de solicitação de mesa e cadeira separadas"
IN_APOIO_PERNA			"Indicador de solicitação de apoio de perna e pé"
IN_GUIA_INTERPRETE			"Indicador de solicitação de guia intérprete"
IN_MACA 				"Indicador de solicitação de maca"
IN_COMPUTADOR 			"Indicador de solicitação de computador"
IN_CADEIRA_ESPECIAL 		"Indicador de solicitação de cadeira especial"
IN_CADEIRA_CANHOTO 		"Indicador de solicitação de cadeira para canhoto"
IN_CADEIRA_ACOLCHOADA 		"Indicador de solicitação de cadeira acolchoada"
IN_PROVA_DEITADO 			"Indicador de solicitação para fazer prova deitado em maca ou mobiliário similar"
IN_MOBILIARIO_OBESO 		"Indicador de solicitação de mobiliário adequado para obeso"
IN_LAMINA_OVERLAY 			"Indicador de solicitação de lâmina overlay"
IN_PROTETOR_AURICULAR 		"Indicador de solicitação de protetor auricular"
IN_MEDIDOR_GLICOSE 		"Indicador de solicitação de medidor de glicose e/ou aplicação de insulina"
IN_MAQUINA_BRAILE 			"Indicador de solicitação de máquina Braile e/ou Reglete e Punção"
IN_SOROBAN 			"Indicador de solicitação de soroban"
IN_MARCA_PASSO			"Indicador de solicitação de marca-passo (impeditivo de uso de detector de metais)"
IN_SONDA 				"Indicador de solicitação de sonda com troca periódica"
IN_MEDICAMENTOS 			"Indicador de solicitação de medicamentos"
IN_SALA_INDIVIDUAL 			"Indicador de solicitação de sala especial individual"
IN_SALA_ESPECIAL 			"Indicador de solicitação de sala especial até 20 participantes"
IN_SALA_ACOMPANHANTE 		"Indicador de solicitação de sala reservada para acompanhantes"
IN_MOBILIARIO_ESPECIFICO 		"Indicador de solicitação de mobiliário específico"
IN_MATERIAL_ESPECIFICO 		"Indicador de solicitação de material específico"
IN_NOME_SOCIAL			"Indicador de inscrito que se declarou travesti, transexual ou transgênero e solicitou atendimento pelo Nome Social, conforme é reconhecido socialmente em consonância com sua identidade de gênero"
IN_CERTIFICADO			"Indicador de solicitação de certificação no Ensino Médio"
NO_ENTIDADE_CERTIFICACAO		"Nome da Entidade Certificadora"
CO_UF_ENTIDADE_CERTIFICACAO		"Código da Unidade da Federação da Entidade Certificadora"
SG_UF_ENTIDADE_CERTIFICACAO		"Sigla da Unidade da Federação da Entidade Certificadora"
CO_MUNICIPIO_PROVA		"Código do município da aplicação da prova"
NO_MUNICIPIO_PROVA		"Nome do município da aplicação da prova"
CO_UF_PROVA			"Código da Unidade da Federação da aplicação da prova"
SG_UF_PROVA  			"Sigla da Unidade da Federação da aplicação da prova"
TP_PRESENCA_CN			"Presença na prova objetiva de Ciências da Natureza"
TP_PRESENCA_CH			"Presença na prova objetiva de Ciências Humanas"
TP_PRESENCA_LC			"Presença na prova objetiva de Linguagens e Códigos"
TP_PRESENCA_MT			"Presença na prova objetiva de Matemática"
CO_PROVA_CN			"Código do tipo de prova de Ciências da Natureza"
CO_PROVA_CH			"Código do tipo de prova de Ciências Humanas"
CO_PROVA_LC			"Código do tipo de prova de Linguagens e Códigos"
CO_PROVA_MT			"Código do tipo de prova de Matemática"
NU_NOTA_CN			"Nota da prova de Ciências da Natureza"
NU_NOTA_CH			"Nota da prova de Ciências Humanas"
NU_NOTA_LC			"Nota da prova de Linguagens e Códigos"
NU_NOTA_MT			"Nota da prova de Matemática"
TX_RESPOSTAS_CN			"Vetor com as respostas da parte objetiva da prova de Ciências da Natureza"
TX_RESPOSTAS_CH			"Vetor com as respostas da parte objetiva da prova de Ciências Humanas"
TX_RESPOSTAS_LC			"Vetor com as respostas da parte objetiva da prova de Linguagens e Códigos"
TX_RESPOSTAS_MT			"Vetor com as respostas da parte objetiva da prova de Matemática"
TP_LINGUA				"Tipo de Língua Estrangeira "
TX_GABARITO_CN			"Vetor com o gabarito da parte objetiva da prova de Ciências da Natureza"
TX_GABARITO_CH			"Vetor com o gabarito da parte objetiva da prova de Ciências Humanas"
TX_GABARITO_LC			"Vetor com o gabarito da parte objetiva da prova de Linguagens e Códigos"
TX_GABARITO_MT			"Vetor com o gabarito da parte objetiva da prova de Matemática"
TP_STATUS_REDACAO		"Situação da redação do participante"
NU_NOTA_COMP1			"Nota da competência 1"
NU_NOTA_COMP2			"Nota da competência 2"
NU_NOTA_COMP3			"Nota da competência 3"
NU_NOTA_COMP4			"Nota da competência 4"
NU_NOTA_COMP5			"Nota da competência 5"
NU_NOTA_REDACAO			"Nota da prova de redação"
Q001				"Até que série seu pai, ou o homem responsável por você, estudou?"
Q002				"Até que série sua mãe, ou a mulher responsável por você, estudou?"
Q003				"Indique o grupo que contempla a ocupação mais próxima da ocupação do seu pai ou do homem responsável por você"
Q004				"Indique o grupo que contempla a ocupação mais próxima da ocupação da sua mãe ou da mulher responsável por você"
Q005				"Incluindo você, quantas pessoas moram atualmente em sua residência?"
Q006				"Qual é a renda mensal de sua família? (Some a sua renda com a dos seus familiares.)"
Q007				"Em sua residência trabalha empregado(a) doméstico(a)?"
Q008				"Na sua residência tem banheiro?"
Q009				"Na sua residência tem quartos para dormir?"
Q010				"Na sua residência tem carro?"
Q011				"Na sua residência tem motocicleta?"
Q012				"Na sua residência tem geladeira?"
Q013				"Na sua residência tem freezer (independente ou segunda porta da geladeira)?"
Q014				"Na sua residência tem máquina de lavar roupa (o tanquinho NÃO deve ser considerado)?"
Q015				"Na sua residência tem máquina de secar roupa (independente ou em conjunto com a máquina de lavar roupa)?"
Q016				"Na sua residência tem forno micro-ondas?"
Q017				"Na sua residência tem máquina de lavar louça?"
Q018				"Na sua residência tem aspirador de pó?"
Q019				"Na sua residência tem televisão em cores?"
Q020				"Na sua residência tem aparelho de DVD?"
Q021				"Na sua residência tem TV por assinatura?"
Q022				"Na sua residência tem telefone celular?"
Q023				"Na sua residência tem telefone fixo?"
Q024				"Na sua residência tem computador?"
Q025				"Na sua residência tem acesso à Internet?"
Q026				"Você exerce ou já exerceu atividade remunerada?"
Q027				"Com que idade você começou a exercer uma atividade remunerada?"
Q028				"Quantas horas semanais você trabalha ou trabalhava aproximadamente? (Considere a atividade remunerada mais recente.)"
Q029				"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Ajudar meus pais nas despesas com a casa"
Q030				"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Sustentar minha família (esposo/a, filhos/as etc.)"
Q031				"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Ser independente/ganhar meu próprio dinheiro"
Q032				"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Adquirir experiência"
Q033				"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Custear/pagar meus estudos"
Q034				"Indique os motivos que levaram você a participar do ENEM: Testar meus conhecimentos, para aumentar as minhas chances de ingressar na Educação Superior"
Q035				"Indique os motivos que levaram você a participar do ENEM: Ingressar na Educação Superior pública"
Q036				"Indique os motivos que levaram você a participar do ENEM: Ingressar na Educação Superior privada"
Q037				"Indique os motivos que levaram você a participar do ENEM: Conseguir uma bolsa de estudos (ProUni, outras)"
Q038				"Indique os motivos que levaram você a participar do ENEM: Participar do Programa de Financiamento Estudantil – FIES"
Q039				"Indique os motivos que levaram você a participar do ENEM: Participar do Programa Ciências Sem Fronteiras"
Q040				"Indique os motivos que levaram você a participar do ENEM: Aumentar a possibilidade de conseguir um emprego"
Q041				"Indique os motivos que levaram você a participar do ENEM: Progredir no meu emprego atual"
Q042				"Em que tipo de escola você frequentou o Ensino Fundamental?"
Q043				"Marque entre as opções abaixo aquela que melhor descreve a modalidade de Ensino Fundamental que você frequentou"
Q044				"Em que turno você frequentou o Ensino Fundamental?"
Q045				"Durante o Ensino Fundamental, você abandonou os estudos e/ou foi reprovado?"
Q046				"Você já concluiu ou está concluindo o Ensino Médio?"
Q047				"Em que tipo de escola você frequentou o Ensino Médio?"
Q048				"Marque entre as opções abaixo aquela que melhor descreve a modalidade de Ensino Médio que você frequentou"
Q049				"Em que turno você frequentou o Ensino Médio?"
Q050				"Durante o Ensino Médio, você abandonou os estudos por algum tempo e/ou foi reprovado?"
.

VALUE LABELS
IN_ESTUDA_CLASSE_HOSPITALAR	 	 
	1	"Sim"
	0	"Não"
/IN_TREINEIRO
	1	"Sim"
	0	"Não"
/TP_DEPENDENCIA_ADM_ESC	 	 
	1	"Federal"
	2	"Estadual"
	3	"Municipal"
	4	"Privada"
/TP_LOCALIZACAO_ESC	 	 
	1	"Urbana"
	2	"Rural"
/TP_SIT_FUNC_ESC	 	
	1	"Em atividade"
	2	"Paralisada"
	3	"Extinta"
	4	"Escola extinta em anos anteriores"
/TP_SEXO	 	
	"M"	"Masculino"
	"F"	"Feminino"
/TP_NACIONALIDADE	 
	0	"Não informado"	
	1	"Brasileiro(a)"
	2	"Brasileiro(a) Naturalizado(a)"
	3	"Estrangeiro(a)"
	4	"Brasileiro(a) Nato(a), nascido(a) no exterior"
/TP_ST_CONCLUSAO	 	
	1	"Já concluí o Ensino Médio"
	2	"Estou cursando e concluirei o Ensino Médio em 2016"
	3	"Estou cursando e concluirei o Ensino Médio após 2016"
	4	"Não concluí e não estou cursando o Ensino Médio"
/TP_ANO_CONCLUIU
	0	"Não informado"
	1	"2015"
	2	"2014"
	3	"2013"
	4	"2012"
	5	"2011"
	6	"2010"
	7	"2009"
	8	"2008"
	9	"2007"
	10	"Anterior a 2007"
/TP_ESCOLA
	1	"Não respondeu"
	2	"Pública"
	3	"Privada"
	4	"Exterior"	
/TP_ENSINO	 	
	1	"Ensino Regular"
	2	"Educação Especial - Modalidade Substitutiva"
	3	"Educação de Jovens e Adultos"
/TP_ESTADO_CIVIL	 	
	0	"Solteiro(a)"
	1	"Casado(a)/Mora com um(a) companheiro(a)"
	2	"Divorciado(a)/Desquitado(a)/Separado(a)"
	3	"Viúvo(a)"
/TP_COR_RACA	 	
	0	"Não declarado"
	1	"Branca"
	2	"Preta"
	3	"Parda"
	4	"Amarela"
	5	"Indígena "
	6	"Não dispõe da informação"
/IN_BAIXA_VISAO	 	 
	1	"Sim"
	0	"Não"
/IN_CEGUEIRA	 	 
	1	"Sim"
	0	"Não"
/IN_SURDEZ	 	 
	1	"Sim"
	0	"Não"
/IN_DEFICIENCIA_AUDITIVA	 	 
	1	"Sim"
	0	"Não"
/IN_SURDO_CEGUEIRA	 	 
	1	"Sim"
	0	"Não"
/IN_DEFICIENCIA_FISICA	 	 
	1	"Sim"
	0	"Não"
/IN_DEFICIENCIA_MENTAL	 	 
	1	"Sim"
	0	"Não"
/IN_DEFICIT_ATENCAO	 	 
	1	"Sim"
	0	"Não"
/IN_DISLEXIA	 	 
	1	"Sim"
	0	"Não"
/IN_GESTANTE	 	 
	1	"Sim"
	0	"Não"
/IN_LACTANTE	 	 
	1	"Sim"
	0	"Não"
/IN_IDOSO	 	 
	1	"Sim"
	0	"Não"
/IN_DISCALCULIA
	1	"Sim"
	0	"Não"
/IN_AUTISMO	 	 
	1	"Sim"
	0	"Não"
/IN_VISAO_MONOCULAR
	1	"Sim"
	0	"Não"
/IN_SABATISTA	 	 
	1	"Sim"
	0	"Não"
/IN_OUTRA_DEF
	1	"Sim"
	0	"Não"
/IN_SEM_RECURSO
	1	"Sim"
	0	"Não"
/IN_NOME_SOCIAL
	1	"Sim"
	0	"Não"
/IN_BRAILLE	 	 
	1	"Sim"
	0	"Não"
/IN_AMPLIADA_24	 	 
	1	"Sim"
	0	"Não"
/IN_AMPLIADA_18	 	 
	1	"Sim"
	0	"Não"
/IN_LEDOR	 	 
	1	"Sim"
	0	"Não"
/IN_ACESSO	 	 
	1	"Sim"
	0	"Não"
/IN_TRANSCRICAO	 	 
	1	"Sim"
	0	"Não"
/IN_LIBRAS	 	 
	1	"Sim"
	0	"Não"
/IN_LEITURA_LABIAL	 	 
	1	"Sim"
	0	"Não"
/IN_MESA_CADEIRA_RODAS	 	 
	1	"Sim"
	0	"Não"
/IN_MESA_CADEIRA_SEPARADA	 	 
	1	"Sim"
	0	"Não"
/IN_APOIO_PERNA	 	 
	1	"Sim"
	0	"Não"
/IN_GUIA_INTERPRETE	 	 
	1	"Sim"
	0	"Não"
/IN_MACA 
	1	"Sim"
	0	"Não"
/IN_COMPUTADOR
	1	"Sim"
	0	"Não"
/IN_CADEIRA_ESPECIAL
	1	"Sim"
	0	"Não"
/IN_CADEIRA_CANHOTO
	1	"Sim"
	0	"Não"
/IN_CADEIRA_ACOLCHOADA
	1	"Sim"
	0	"Não"
/IN_PROVA_DEITADO 
	1	"Sim"
	0	"Não"
/IN_MOBILIARIO_OBESO 
	1	"Sim"
	0	"Não"
/IN_LAMINA_OVERLAY 
	1	"Sim"
	0	"Não"
/IN_PROTETOR_AURICULAR
	1	"Sim"
	0	"Não"
/IN_MEDIDOR_GLICOSE 
	1	"Sim"
	0	"Não"
/IN_MAQUINA_BRAILE 
	1	"Sim"
	0	"Não"
/IN_SOROBAN 
	1	"Sim"
	0	"Não"
/IN_MARCA_PASSO
	1	"Sim"
	0	"Não"
/IN_SONDA 
	1	"Sim"
	0	"Não"
/IN_MEDICAMENTOS 
	1	"Sim"
	0	"Não"
/IN_SALA_INDIVIDUAL
	1	"Sim"
	0	"Não"
/IN_SALA_ESPECIAL 
	1	"Sim"
	0	"Não"
/IN_SALA_ACOMPANHANTE
	1	"Sim"
	0	"Não"
/IN_MOBILIARIO_ESPECIFICO
	1	"Sim"
	0	"Não"
/IN_MATERIAL_ESPECIFICO
	1	"Sim"
	0	"Não"
/IN_CERTIFICADO	 	 
	1	"Sim"
	0	"Não"
/TP_PRESENCA_CN	 	 
	0	"Faltou à prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_CH	 	
	0	"Faltou à prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_LC	 	
	0	"Faltou à prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_MT	 	
	0	"Faltou à prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/CO_PROVA_CN
	291	"Azul"
	292	"Amarela"
	293	"Branca"
	294	"Rosa"
	307	"Branca - Adaptada"
	331	"Azul (Reaplicação)"
	332	"Amarela (Reaplicação)"
	333	"Branca (Reaplicação)"
	334	"Rosa (Reaplicação)"
	351	"Azul (Reaplicação)"
	352	"Amarela (Reaplicação)"
	353	"Branca (Reaplicação)"
	354	"Rosa (Reaplicação)"
	355	"Branca - Adaptada (Reaplicação)" 
/CO_PROVA_CH	 	
	295	"Azul"
	296	"Amarela"
	297	"Branca"
	298	"Rosa"
	308	"Branca - Adaptada"
	336	"Azul (Reaplicação)"
	337	"Amarela (Reaplicação)"
	338	"Branca (Reaplicação)"
	339	"Rosa (Reaplicação)"
	356	"Azul (Reaplicação)"
	357	"Amarela (Reaplicação)"
	358	"Branca (Reaplicação)"
	359	"Rosa (Reaplicação)"
	360	"Branca - Adaptada (Reaplicação)"
/CO_PROVA_LC	 	
	299	"Azul"
	300	"Amarela"
	301	"Rosa"
	302	"Cinza"
	309	"Cinza - Adaptada"
	341	"Azul (Reaplicação)"
	342	"Amarela (Reaplicação)"
	343	"Rosa (Reaplicação)"
	344	"Cinza - Adaptada"
	361	"Azul (Reaplicação)"
	362	"Amarela (Reaplicação)"
	363	"Rosa (Reaplicação)"
	364	"Cinza (Reaplicação)"
	365	"Cinza - Adaptada (Reaplicação)" 
/CO_PROVA_MT	 	
	303	"Azul"
	304	"Amarela"
	305	"Rosa"
	306	"Cinza"
	310	"Cinza - Adaptada"
	346	"Azul (Reaplicação)"
	347	"Amarela (Reaplicação)"
	348	"Rosa (Reaplicação)"
	349	"Cinza (Reaplicação)"
	366	"Azul (Reaplicação)"
	367	"Amarela (Reaplicação)"
	368	"Rosa (Reaplicação)"
	369	"Cinza (Reaplicação)"
	370	"Cinza - Adaptada (Reaplicação)"
 /TP_LINGUA	 	
	0	"Inglês"
	1	"Espanhol"
/TP_STATUS_REDACAO	 	 
	1	"Sem problemas"
	2	"Anulada"
	3	"Cópia Texto Motivador"
	4	"Em Branco"
	5	"Fere Direitos Humanos"
	6	"Fuga ao tema"
	7	"Não atendimento ao tipo"
	8	"Texto insuficiente"
	9	"Parte desconectada"
/Q001	 	 
	"A"	"Nunca estudou"
	"B"	"Não completou a 4ª série/5º ano do ensino fundamental"
	"C"	"Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do ensino fundamental"
	"D"	"Completou a 8ª série/9º ano do ensino fundamental, mas não completou o Ensino Médio"
	"E"	"Completou o Ensino Médio, mas não completou a Faculdade"
	"F"	"Completou a Faculdade, mas não completou a Pós-graduação"
	"G"	"Completou a Pós-graduação"
	"H"	"Não sei"
/Q002	 	 
	"A"	"Nunca estudou"
	"B"	"Não completou a 4ª série/5º ano do ensino fundamental"
	"C"	"Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do ensino fundamental"
	"D"	"Completou a 8ª série/9º ano do ensino fundamental, mas não completou o Ensino Médio"
	"E"	"Completou o Ensino Médio, mas não completou a Faculdade"
	"F"	"Completou a Faculdade, mas não completou a Pós-graduação"
	"G"	"Completou a Pós-graduação"
	"H"	"Não sei"
/Q003	 	 
	"A"	"Grupo 1 (Verificar a definição no dicionário de dados)"
	"B"	"Grupo 2 (Verificar a definição no dicionário de dados)"
	"C"	"Grupo 3 (Verificar a definição no dicionário de dados)"
	"D"	"Grupo 4 (Verificar a definição no dicionário de dados)"
	"E"	"Grupo 5 (Verificar a definição no dicionário de dados)"
	"F"	"Não Sei"
/Q004	 	 
	"A"	"Grupo 1 (Verificar a definição no dicionário de dados)"
	"B"	"Grupo 2 (Verificar a definição no dicionário de dados)"
	"C"	"Grupo 3 (Verificar a definição no dicionário de dados)"
	"D"	"Grupo 4 (Verificar a definição no dicionário de dados)"
	"E"	"Grupo 5 (Verificar a definição no dicionário de dados)"
	"F"	"Não Sei"
/Q005	 	 
	1	"1"
	2	"2"
	3	"3"
	4	"4"
	5	"5"
	6	"6"
	7	"7"
	8	"8"
	9	"9"
	10	"10"
	11	"11"
	12	"12"
	13	"13"
	14	"14"
	15	"15"
	16	"16"
	17	"17"
	18	"18"
	19	"19"
	20	"20"
/Q006	 	 
	"A"	 "Nenhuma renda"
	"B"	 "Até R$ 880,00"
	"C"	 "De R$ 880,01,01 até R$ 1.320,00"
	"D"	 "De R$ 1.320,01 até R$ 1.760,00"
	"E"	 "De R$ 1.760,01 até R$ 2.200,00"
	"F"	 "De R$ 2.200,01 até R$ 2.640,00"
	"G"	 "De R$ 2.640,01 até R$ 3.520,00"
	"H"	 "De R$ 3.520,01 até R$ 4.400,00"
	"I"	 "De R$ 4.400,01 até R$ 5.280,00"
	"J"	 "De R$ 5.280,01 até R$ 6.160,00"
	"K"	 "De R$ 6.160,01 até R$ 7.040,00"
	"L"	 "De R$ 7.040,01 até R$ 7.920,00"
	"M"	 "De R$ 7.920,01 até R$ 8.800,00"
	"N"	 "De R$ 8.800,01 até R$ 10.560,00"
	"O"	 "De R$ 10.560,01 até R$ 13.200,00"
	"P"	 "De R$ 13.200,01 até R$ 17.600,00"
	"Q"	 "Mais de 17.600,00"
/Q007	 	 
	"A"	"Não"
	"B"	"Sim, um ou dois dias por semana"
	"C"	"Sim, três ou quatro dias por semana"
	"D"	"Sim, pelo menos cinco dias por semana"
/Q008	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q009	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q010	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q011	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q012	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q013	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q014	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q015	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q016	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q017	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q018	 	 
	"A"	"Não"
	"B"	"Sim"
/Q019	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q020	 	 
	"A"	"Não"
	"B"	"Sim"
/Q021	 	 
	"A"	"Não"
	"B"	"Sim"
/Q022	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q023	 	
	"A"	"Não"
	"B"	"Sim"
/Q024		
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q025		
	"A"	"Não"
	"B"	"Sim"
/Q026		
	"A"	"Não, nunca trabalhei"
	"B"	"Sim, já trabalhei, mas não estou trabalhando"
	"C"	"Sim, estou trabalhando"
/Q027		
	"A"	"Menos de 14 anos"
	"B"	"14 anos"
	"C"	"15 anos"
	"D"	"16 anos"
	"E"	"17 anos"
	"F"	"18 anos"
	"G"	"19 anos"
	"H"	"20 anos"
	"I"	"21 anos"
	"J"	"22 anos"
	"K"	"23 anos"
	"L"	"24 anos"
	"M"	"25 anos ou mais"
/Q028		
	"A"	"Até 10 horas semanais"
	"B"	"De 11 a 20 horas semanais"
	"C"	"De 21 a 30 horas semanais"
	"D"	"De 31 a 40 horas semanais"
	"E"	"Mais de 40 horas semanais"
/Q042	 	 
	"A"	"Somente em escola pública"
	"B"	"A maior parte em escola pública"
	"C"	"Somente em escola particular"
	"D"	"A maior parte em escola particular"
	"E"	"Somente em escola indígena"
	"F"	"A maior parte em escola indígena"
	"G"	"Somente em escola situada em comunidade quilombola"
	"H"	"A maior parte em escola situada em comunidade quilombola"
/Q043		
	"A"	"Cursei o Ensino Fundamental somente na modalidade regular"
	"B"	"Cursei o Ensino Fundamental parte na modalidade regular e parte na modalidade EJA (Educação de Jovens e Adultos)"
	"C"	"Cursei o Ensino Fundamental somente na modalidade EJA (Educação de Jovens e Adultos)"
	"D"	"Outras modalidades"
/Q044	 	 
	"A"	"Somente no diurno"
	"B"	"Parte no diurno e parte no noturno"
	"C"	"Somente no noturno"
/Q045	 	 
	"A"	"Não abandonei, nem fui reprovado"
	"B"	"Não abandonei, mas fui reprovado"
	"C"	"Abandonei, mas não fui reprovado"
	"D"	"Abandonei e fui reprovado"
/Q046	 	 
	"A"	"Já concluí o Ensino Médio"
	"B"	"Estou cursando e concluirei o Ensino Médio em 2016"
	"C"	"Estou cursando e concluirei o Ensino Médio após 2016"
	"D"	"Não concluí e não estou cursando o Ensino Médio"
/Q047	 	 
	"A"	"Somente em escola pública"
	"B"	"Parte em escola pública e parte em escola privada sem bolsa de estudo integral"
	"C"	"Parte em escola pública e parte em escola privada com bolsa de estudo integral"
	"D"	"Somente em escola privada sem bolsa de estudo integral"
	"E"	"Somente em escola privada com bolsa de estudo integral"
/Q048	 	
	"A"	"Cursei o Ensino Médio somente na modalidade regular"
	"B"	"Cursei o Ensino Médio parte na modalidade regular e parte na modalidade EJA (Educação de Jovens e Adultos)"
	"C"	"Cursei o Ensino Médio somente na modalidade EJA (Educação de Jovens e Adultos)"
	"D"	"Outras modalidades"
/Q049		
	"A"	"Somente no diurno"
	"B"	"Parte no diurno e parte no noturno"
	"C"	"Somente no noturno"
/Q050		
	"A"	"Não abandonei, nem fui reprovado"
	"B"	"Não abandonei, mas fui reprovado"
	"C"	"Abandonei, mas não fui reprovado"
	"D"	"Abandonei e fui reprovado"
.