
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)					  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2016.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2016       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2016.CSV no diret�rio C:\ do computador.			      */
/*															 			  */                                           
/* Ao terminar esses procedimentos execute o programa salvo utilizando    */
/* as vari�veis de interesse.                                             */
/**************************************************************************/
/*				                  ATEN��O                                 */  
/**************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	  */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir */
/* os dados sem os r�tulos basta importar diretamente no SAS.			  */
/* 																	      */ 																          
/**************************************************************************/



proc format;

    value  $IN_ESTUDA_CLASSE_HOSPITALAR
        0='N�o'
		1='Sim';

	value $IN_TREINEIRO
		0='N�o'
		1='Sim';

	value $TP_DEPENDENCIA_ADM
       1= 'Federal'
	   2= 'Estadual'
	   3= 'Municipal'
	   4= 'Privada';

	value $TP_LOCALIZACAO
       1= 'Urbana'
	   2= 'Rural';

	value $TP_SIT_FUNC_ESC
	   1='Em atividade'
	   2='Paralisada'
	   3='Extinta'
	   4='Escola extinta em anos anteriores';

	value  $TP_SEXO
		M ='Masculino'
		F ='Feminino';

	value $TP_NACIONAL
	   0= 'N�o informado'
	   1= 'Brasileiro(a)'
	   2= 'Brasileiro(a) Naturalizado(a)'
	   3= 'Estrangeiro(a)'
	   4= 'Brasileiro(a) Nato(a), nascido(a) no exterior';

	value  $TP_ST_CONCLUSAO
		1='J� conclu� o Ensino M�dio'
		2='Estou cursando e concluirei o Ensino M�dio em 2016'	
		3='Estou cursando e concluirei o Ensino M�dio ap�s 2016'
		4='N�o conclu� e n�o estou cursando o Ensino M�dio';

	value $TP_ANO_CONCLUIU
		0=	'N�o informado'
		1=	'2015'
		2=	'2014'
		3=	'2013'
		4=	'2012'
		5=	'2011'
		6=	'2010'
		7=	'2009'
		8=	'2008'
		9=	'2007'
		10=	'Anterior a 2007';


	value  $TP_ESCOLA
		1='N�o respondeu'
		2='P�blica'
		3='Privada'
		4='Exterior';

	value  $TP_ENSINO
		1='Ensino Regular'
		2='Educa��o Especial - Modalidade Substitutiva'
		3='Educa��o de Jovens e Adultos';

	value  $TP_ESTADO_CIVIL
		0='Solteiro(a)'
		1='Casado(a)/Mora com um(a) companheiro(a)'
		2='Divorciado(a)/Desquitado(a)/Separado(a)'
		3='Vi�vo(a)';

	value  $TP_COR_RACA
		0='N�o declarado'
		1='Branca'
		2='Preta'
		3='Parda'
		4='Amarela'
		5='Ind�gena'
		6='N�o disp�e da informa��o';

	value  $IN_BAIXA_VISAO
		1='Sim'
		0='N�o';

	value  $IN_CEGUEIRA
		1='Sim'
		0='N�o';

	value  $IN_SURDEZ
		1='Sim'
		0='N�o';

	value  $IN_DEFICIENCIA_AUDITIVA
		1='Sim'
		0='N�o';

	value  $IN_SURDO_CEGUEIRA
		1='Sim'
		0='N�o';

	value  $IN_DEFICIENCIA_FISICA
		1='Sim'
		0='N�o';

	value  $IN_DEFICIENCIA_MENTAL
		1='Sim'
		0='N�o';

	value  $IN_DEFICIT_ATENCAO
		1='Sim'
		0='N�o';

	value  $IN_DISLEXIA
		1='Sim'
		0='N�o';

	value  $IN_GESTANTE
		1='Sim'
		0='N�o';

	value  $IN_LACTANTE
		1='Sim'
		0='N�o';

	value  $IN_IDOSO
		1='Sim'
		0='N�o';

	value $IN_DISCALCULIA
		1='Sim'
		0='N�o';

	value  $IN_AUTISMO
		1='Sim'
		0='N�o';

	value $IN_VISAO_MONOCULAR
		1='Sim'
		0='N�o';

	value  $IN_SABATISTA
		1='Sim'
		0='N�o';

	value $IN_OUTRA_DEF
		1='Sim'
		0='N�o';
	
	value $IN_SEM_RECURSO
		1='Sim'
		0='N�o';

	value $IN_NOME_SOCIAL
		1='Sim'
		0='N�o';

	value  $IN_BRAILLE
		1='Sim'
		0='N�o';

	value  $IN_AMPLIADA
		1='Sim'
		0='N�o';

	value  $IN_LEDOR
		1='Sim'
		0='N�o';

	value  $IN_ACESSO
		1='Sim'
		0='N�o';

	value  $IN_TRANSCRICAO
		1='Sim'
		0='N�o';

	value  $IN_LIBRAS
		1='Sim'
		0='N�o';

	value  $IN_LEITURA_LABIAL
		1='Sim'
		0='N�o';

	value  $IN_MESA_CADEIRA_RODAS
		1='Sim'
		0='N�o';

	value  $IN_MESA_CADEIRA_SEPARADA
		1='Sim'
		0='N�o';

	value  $IN_APOIO_PERNA
		1='Sim'
		0='N�o';

	value  $IN_GUIA_INTERPRETE
		1='Sim'
		0='N�o';

	value $IN_MACA
		1='Sim'
		0='N�o';

	value $IN_COMPUTADOR
		1='Sim'
		0='N�o';

	value $IN_CADEIRA_ESPECIAL
		1='Sim'
		0='N�o';

	value $IN_CADEIRA_CANHOTO
		1='Sim'
		0='N�o';

	value $IN_CADEIRA_ACOLCHOADA
		1='Sim'
		0='N�o';

	value $IN_PROVA_DEITADO
		1='Sim'
		0='N�o';

	value $IN_MOBILIARIO_OBESO
		1='Sim'
		0='N�o';

	value $IN_LAMINA_OVERLAY
		1='Sim'
		0='N�o';

	value $IN_PROTETOR_AURICULAR
		1='Sim'
		0='N�o';

	value $IN_MEDIDOR_GLICOSE
		1='Sim'
		0='N�o';

	value $IN_MAQUINA_BRAILE
		1='Sim'
		0='N�o';

	value $IN_SOROBAN
		1='Sim'
		0='N�o';

	value $IN_MARCA_PASSO
		1='Sim'
		0='N�o';

	value $IN_SONDA
		1='Sim'
		0='N�o';

	value $IN_MEDICAMENTOS
		1='Sim'
		0='N�o';

	value $IN_SALA_INDIVIDUAL
		1='Sim'
		0='N�o';

	value $IN_SALA_ESPECIAL
		1='Sim'
		0='N�o';

	value $IN_SALA_ACOMPANHANTE
		1='Sim'
		0='N�o';

	value $IN_MOBILIARIO_ESPECIFICO
		1='Sim'
		0='N�o';

	value $IN_MATERIAL_ESPECIFICO
		1='Sim'
		0='N�o';

	value  $IN_CERTIFICADO
		1='Sim'
		0='N�o';

	value  $TP_PRESENCA_CN
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_CH
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_LC
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_MT
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $CO_PROVA_CN
		291='Azul'
		292='Amarela'
		293='Branca'
		294='Rosa'
		307='Branca - Adaptada'
		331='Azul (Reaplica��o)'
		332='Amarela (Reaplica��o)'
		333='Branca (Reaplica��o)'
		334='Rosa (Reaplica��o)'
		351='Azul (Reaplica��o)'
		352='Amarela (Reaplica��o)'
		353='Branca (Reaplica��o)'
		354='Rosa (Reaplica��o)'
		355='Branca - Adaptada (Reaplica��o)';

	value  $CO_PROVA_CH
		295='Azul'
		296='Amarela'
		297='Branca'
		298='Rosa'
		308='Branca - Adaptada'
		336='Azul (Reaplica��o)'
		337='Amarela (Reaplica��o)'
		338='Branca (Reaplica��o)'
		339='Rosa (Reaplica��o)'
		356='Azul (Reaplica��o)'
		357='Amarela (Reaplica��o)'
		358='Branca (Reaplica��o)'
		359='Rosa (Reaplica��o)'
		360='Branca - Adaptada (Reaplica��o)';

	value  $CO_PROVA_LC
		299='Azul'
		300='Amarela'
		301='Rosa'
		302='Cinza'
		309='Cinza - Adaptada'
		341='Azul (Reaplica��o)'
		342='Amarela (Reaplica��o)'
		343='Rosa (Reaplica��o)'
		344='Cinza - Adaptada'
		361='Azul (Reaplica��o)'
		362='Amarela (Reaplica��o)'
		363='Rosa (Reaplica��o)'
		364='Cinza (Reaplica��o)'
		365='Cinza - Adaptada (Reaplica��o)';

	value  $CO_PROVA_MT
		303='Azul'
		304='Amarela'
		305='Rosa'
		306='Cinza'
		310='Cinza - Adaptada'
		346='Azul (Reaplica��o)'
		347='Amarela (Reaplica��o)'
		348='Rosa (Reaplica��o)'
		349='Cinza (Reaplica��o)'
		366='Azul (Reaplica��o)'
		367='Amarela (Reaplica��o)'
		368='Rosa (Reaplica��o)'
		369='Cinza (Reaplica��o)'
		370='Cinza - Adaptada (Reaplica��o)';

	value  $TP_LINGUA
		0='Ingl�s'
		1='Espanhol';

	value  $TP_STATUS_REDACAO
		1='Sem problemas'
		2='Anulada'
		3='C�pia Texto Motivador'
        4='Em Branco'
		5='Fere Direitos Humanos'
		6='Fuga ao tema'
        7='N�o atendimento ao tipo'
		8='Texto insuficiente'
        9='Parte desconectada';
				
	
	value $Qum
		A='Nunca estudou'
		B='N�o completou a 4� s�rie/5� ano do ensino fundamental'
		C='Completou a 4� s�rie/5� ano, mas n�o completou a 8� s�rie/9� ano do ensino fundamental'
		D='Completou a 8� s�rie/9� ano do ensino fundamental, mas n�o completou o Ensino M�dio'
		E='Completou o Ensino M�dio, mas n�o completou a Faculdade'
		F='Completou a Faculdade, mas n�o completou a P�s-gradua��o'
		G='Completou a P�s-gradua��o'
		H='N�o sei';

	value $Qdois
		A='Nunca estudou'
		B='N�o completou a 4� s�rie/5� ano do ensino fundamental'
		C='Completou a 4� s�rie/5� ano, mas n�o completou a 8� s�rie/9� ano do ensino fundamental'
		D='Completou a 8� s�rie/9� ano do ensino fundamental, mas n�o completou o Ensino M�dio'
		E='Completou o Ensino M�dio, mas n�o completou a Faculdade'
		F='Completou a Faculdade, mas n�o completou a P�s-gradua��o'
		G='Completou a P�s-gradua��o'
		H='N�o sei';

	value $Qtres
		A='Grupo 1: Lavrador, agricultor sem empregados, b�ia fria, criador de animais (gado, porcos, galinhas, ovelhas, cavalos etc.), apicultor, pescador, lenhador, seringueiro, extrativista'
		B='Grupo 2: Diarista, empregado dom�stico, cuidador de idosos, bab�, cozinheiro (em casas particulares), motorista particular, jardineiro, faxineiro de empresas e pr�dios, vigilante, porteiro, carteiro, office-boy, vendedor, caixa, atendente de loja, auxiliar administrativo, recepcionista, servente de pedreiro, repositor de mercadoria'
		C='Grupo 3: Padeiro, cozinheiro industrial ou em restaurantes, sapateiro, costureiro, joalheiro, torneiro mec�nico, operador de m�quinas, soldador, oper�rio de f�brica, trabalhador da minera��o, pedreiro, pintor, eletricista, encanador, motorista, caminhoneiro, taxista'
		D='Grupo 4: Professor (de ensino fundamental ou m�dio, idioma, m�sica, artes etc.), t�cnico (de enfermagem, contabilidade, eletr�nica etc.), policial, militar de baixa patente (soldado, cabo, sargento), corretor de im�veis, supervisor e gerente, mestre de obras, pastor, microempres�rio (propriet�rio de empresa com menos de 10 empregados), pequeno comerciante, pequeno propriet�rio de terras, trabalhador aut�nomo ou por conta pr�pria'
		E='Grupo 5: M�dico, engenheiro, dentista, psic�logo, economista, advogado, juiz, promotor, defensor, delegado, tenente, capit�o, coronel, professor universit�rio, diretor em empresas p�blicas e privadas, pol�tico, propriet�rio de empresas com mais de 10 empregados'
		F='N�o Sei';
		
	value $Qquatro
		A='Grupo 1: Lavradora, agricultora sem empregados, b�ia fria, criadora de animais (gado, porcos, galinhas, ovelhas, cavalos etc.), apicultora, pescadora, lenhadora, seringueira, extrativista'
		B='Grupo 2: Diarista, empregada dom�stica, cuidadora de idosos, bab�, cozinheira (em casas particulares), motorista particular, jardineira, faxineira de empresas e pr�dios, vigilante, porteira, carteira, office-boy, vendedora, caixa, atendente de loja, auxiliar administrativa, recepcionista, servente de pedreiro, repositora de mercadoria'
		C='Grupo 3: Padeira, cozinheira industrial ou em restaurantes, sapateira, costureira, joalheira, torneira mec�nica, operadora de m�quinas, soldadora, oper�ria de f�brica, trabalhadora da minera��o, pedreira, pintora, eletricista, encanadora, motorista, caminhoneira, taxista'
		D='Grupo 4: Professora (de ensino fundamental ou m�dio, idioma, m�sica, artes etc.), t�cnica (de enfermagem, contabilidade, eletr�nica etc.), policial, militar de baixa patente (soldado, cabo, sargento), corretora de im�veis, supervisora e gerente, mestre de obras, pastora, microempres�ria (propriet�ria de empresa com menos de 10 empregados), pequena comerciante, pequena propriet�ria de terras, trabalhadora aut�noma ou por conta pr�pria'
		E='Grupo 5: M�dica, engenheira, dentista, psic�loga, economista, advogada, ju�za, promotora, defensora, delegada, tenente, capit�, coronel, professora universit�ria, diretora em empresas p�blicas e privadas, pol�tica, propriet�ria de empresas com mais de 10 empregados'
		F='N�o Sei';

	value $Qcinco
		1='1'
		2='2'
		3='3'
		4='4'
		5='5'
		6='6'
		7='7'
		8='8'
		9='9'
		10='10'
		11='11'
		12='12'
		13='13'
		14='14'
		15='15'
		16='16'
		17='17'
		18='18'
		19='19'
		20='20';

	value $Qseis
		A= "Nenhuma renda"
		B= "At� R$ 880,00"
		C= "De R$ 880,01,01 at� R$ 1.320,00"
		D= "De R$ 1.320,01 at� R$ 1.760,00"
		E= "De R$ 1.760,01 at� R$ 2.200,00"
		F= "De R$ 2.200,01 at� R$ 2.640,00"
		G= "De R$ 2.640,01 at� R$ 3.520,00"
		H= "De R$ 3.520,01 at� R$ 4.400,00"
		I= "De R$ 4.400,01 at� R$ 5.280,00"
		J= "De R$ 5.280,01 at� R$ 6.160,00"
		K= "De R$ 6.160,01 at� R$ 7.040,00"
		L= "De R$ 7.040,01 at� R$ 7.920,00"
		M= "De R$ 7.920,01 at� R$ 8.800,00"
		N= "De R$ 8.800,01 at� R$ 10.560,00"
		O= "De R$ 10.560,01 at� R$ 13.200,00"
		P= "De R$ 13.200,01 at� R$ 17.600,00"
		Q= "Mais de 17.600,00";

	value $Qsete
		A='N�o'
		B='Sim, um ou dois dias por semana'
		C='Sim, tr�s ou quatro dias por semana'
		D='Sim, pelo menos cinco dias por semana';

	value $Qoito
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qnove
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdez
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qonze
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdoze
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qtreze
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qcatorze
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qquinze
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdezesseis
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdezessete
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdezoito
		A='N�o'
		B='Sim';

	value $Qdezenove
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qvinte
		A='N�o'
		B='Sim';

	value $Qvinteum
		A='N�o'
		B='Sim';

	value $Qvintedois
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qvintetres
		A='N�o'
		B='Sim';

	value $Qvintequatro
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qvintecinco
		A='N�o'
		B='Sim';
		
	value $Qvinteseis
		A='N�o, nunca trabalhei'
		B='Sim, j� trabalhei, mas n�o estou trabalhando'
		C='Sim, estou trabalhando';

	value $Qvintesete
		A= 'Menos de 14 anos'
		B= '14 anos'
        C= '15 anos'
        D= '16 anos'
        E= '17 anos'
        F= '18 anos'
        G= '19 anos'
        H= '20 anos'
        I= '21 anos'
        J= '22 anos'
        K= '23 anos'
        L= '24 anos'
        M= '25 anos ou mais';

	value $Qvinteoito
		A='At� 10 horas semanais'
		B='De 11 a 20 horas semanais'
		C='De 21 a 30 horas semanais'
		D='De 31 a 40 horas semanais'
		E='Mais de 40 horas semanais';

	value $Qquarentadois
		A='Somente em escola p�blica'
		B='A maior parte em escola p�blica'
		C='Somente em escola particular'
		D='A maior parte em escola particular'
		E='Somente em escola ind�gena'
		F='A maior parte em escola ind�gena'
		G='Somente em escola situada em comunidade quilombola'
		H='A maior parte em escola situada em comunidade quilombola';

    value $Qquarentatres
		A='Cursei o Ensino Fundamental somente na modalidade regular'
		B='Cursei o Ensino Fundamental parte na modalidade regular e parte na modalidade EJA (Educa��o de Jovens e Adultos)'
		C='Cursei o Ensino Fundamental somente na modalidade EJA (Educa��o de Jovens e Adultos)'
		D='Outras modalidades';

	value $Qquarentaquatro
		A='Somente no diurno'
		B='Parte no diurno e parte no noturno'
		C='Somente no noturno';

	value $Qquarentacinco
		A='N�o abandonei, nem fui reprovado'
		B='N�o abandonei, mas fui reprovado'
		C='Abandonei, mas n�o fui reprovado'
		D='Abandonei e fui reprovado';

	value $Qquarentaseis
		A='J� conclu� o Ensino M�dio'
		B='Estou cursando e concluirei o Ensino M�dio em 2016'
		C='Estou cursando e concluirei o Ensino M�dio ap�s 2016'
		D='N�o conclu� e n�o estou cursando o Ensino M�dio';

	value $Qquarentasete
		A='Somente em escola p�blica'
		B='Parte em escola p�blica e parte em escola privada sem bolsa de estudo integral'
		C='Parte em escola p�blica e parte em escola privada com bolsa de estudo integral'
		D='Somente em escola privada sem bolsa de estudo integral'
		E='Somente em escola privada com bolsa de estudo integral';

	value $Qquarentaoito
		A='Cursei o Ensino M�dio somente na modalidade regular'
		B='Cursei o Ensino M�dio parte na modalidade regular e parte na modalidade EJA (Educa��o de Jovens 	e Adultos)'
		C='Cursei o Ensino M�dio somente na modalidade EJA (Educa��o de Jovens e Adultos)'
		D='Outras modalidades';

	value $Qquarentanove
		A='Somente no diurno'
		B='Parte no diurno e parte no noturno'
		C='Somente no noturno';

    value $Qcinquenta
		A='N�o abandonei, nem fui reprovado'
		B='N�o abandonei, mas fui reprovado'
		C='Abandonei, mas n�o fui reprovado'
		D='Abandonei e fui reprovado';

	
run;


DATA WORK.DADOS_ENEM_2016;
INFILE 'C:\MICRODADOS_ENEM_2016.csv' /*local do arquivo*/
        LRECL=963
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
        NU_INSCRICAO       : BEST21.
        NU_ANO           : BEST4.
        CO_MUNICIPIO_RESIDENCIA : BEST7.
        NO_MUNICIPIO_RESIDENCIA : $CHAR32.
        CO_UF_RESIDENCIA : BEST2.
        SG_UF_RESIDENCIA    : $CHAR2.
		NU_IDADE            : BEST2.
        TP_SEXO          : $CHAR1.
        TP_ESTADO_CIVIL  :  $CHAR1.
        TP_COR_RACA      :  $CHAR1.
        TP_NACIONALIDADE    : $CHAR2.
        CO_MUNICIPIO_NASCIMENTO : BEST7.
        NO_MUNICIPIO_NASCIMENTO : $CHAR32.
        CO_UF_NASCIMENTO : BEST2.
        SG_UF_NASCIMENTO    : $CHAR2.
        TP_ST_CONCLUSAO     :  $CHAR1.
        TP_ANO_CONCLUIU     :  $CHAR2.
        TP_ESCOLA        :  $CHAR1.
        TP_ENSINO     :  $CHAR1.
		IN_TREINEIRO	:$CHAR1.
        CO_ESCOLA       : BEST8.
        CO_MUNICIPIO_ESC : BEST7.
        NO_MUNICIPIO_ESC : $CHAR32.
        CO_UF_ESC       : BEST2.
        SG_UF_ESC           : $CHAR2.
        TP_DEPENDENCIA_ADM_ESC : $CHAR1.
        TP_LOCALIZACAO_ESC : $CHAR1.
        TP_SIT_FUNC_ESC     : $CHAR1.
        IN_BAIXA_VISAO   :  $CHAR1.
        IN_CEGUEIRA      :  $CHAR1.
        IN_SURDEZ        :  $CHAR1.
        IN_DEFICIENCIA_AUDITIVA : $CHAR1.
        IN_SURDO_CEGUEIRA : $CHAR1.
        IN_DEFICIENCIA_FISICA : $CHAR1.
        IN_DEFICIENCIA_MENTAL : $CHAR1.
        IN_DEFICIT_ATENCAO : $CHAR1.
        IN_DISLEXIA      : $CHAR1.
		IN_DISCALCULIA	 : $CHAR1.
        IN_AUTISMO       : $CHAR1.
		IN_VISAO_MONOCULAR : $CHAR1.
		IN_OUTRA_DEF	 : $CHAR1.
        IN_SABATISTA     : $CHAR1.
        IN_GESTANTE      : $CHAR1.
        IN_LACTANTE      : $CHAR1.
        IN_IDOSO         : $CHAR1.
     	IN_ESTUDA_CLASSE_HOSPITALAR : $CHAR1.
		IN_SEM_RECURSO	 : $CHAR1.
        IN_BRAILLE       : $CHAR1.
        IN_AMPLIADA_24   : $CHAR1.
        IN_AMPLIADA_18   : $CHAR1.
        IN_LEDOR         : $CHAR1.
        IN_ACESSO        : $CHAR1.
        IN_TRANSCRICAO   : $CHAR1.
        IN_LIBRAS        : $CHAR1.
        IN_LEITURA_LABIAL : $CHAR1.
        IN_MESA_CADEIRA_RODAS : $CHAR1.
        IN_MESA_CADEIRA_SEPARADA : $CHAR1.
        IN_APOIO_PERNA   : $CHAR1.
        IN_GUIA_INTERPRETE : $CHAR1.
		IN_MACA			:	$CHAR1.	
		IN_COMPUTADOR 	:	$CHAR1.	
		IN_CADEIRA_ESPECIAL 	: $CHAR1.
		IN_CADEIRA_CANHOTO 		: $CHAR1.	
		IN_CADEIRA_ACOLCHOADA 	: $CHAR1.
		IN_PROVA_DEITADO 		: $CHAR1.
		IN_MOBILIARIO_OBESO 	: $CHAR1.	
		IN_LAMINA_OVERLAY 		: $CHAR1.
		IN_PROTETOR_AURICULAR 	: $CHAR1.
		IN_MEDIDOR_GLICOSE 		: $CHAR1.
		IN_MAQUINA_BRAILE 		: $CHAR1.
		IN_SOROBAN 				: $CHAR1.
		IN_MARCA_PASSO 			: $CHAR1.
		IN_SONDA 				: $CHAR1.
		IN_MEDICAMENTOS 		: $CHAR1.	
		IN_SALA_INDIVIDUAL 		: $CHAR1.
		IN_SALA_ESPECIAL 		: $CHAR1.
		IN_SALA_ACOMPANHANTE 	: $CHAR1.
		IN_MOBILIARIO_ESPECIFICO : $CHAR1.
		IN_MATERIAL_ESPECIFICO 	: $CHAR1.
  		IN_NOME_SOCIAL	 : $CHAR1.
        IN_CERTIFICADO   : $CHAR1.
        NO_ENTIDADE_CERTIFICACAO : $CHAR90.
        CO_UF_ENTIDADE_CERTIFICACAO : BEST2.
        SG_UF_ENTIDADE_CERTIFICACAO : $CHAR2.
        CO_MUNICIPIO_PROVA : BEST7.
        NO_MUNICIPIO_PROVA : $CHAR27.
        CO_UF_PROVA     : BEST2.
        SG_UF_PROVA         : $CHAR2.
        TP_PRESENCA_CN   : $CHAR1.
        TP_PRESENCA_CH   : $CHAR1.
        TP_PRESENCA_LC   : $CHAR1.
        TP_PRESENCA_MT   : $CHAR1.
        CO_PROVA_CN      : $CHAR3.
        CO_PROVA_CH      : $CHAR3.
        CO_PROVA_LC      : $CHAR3.
        CO_PROVA_MT      : $CHAR3.
        NU_NOTA_CN          : BEST8.2
        NU_NOTA_CH          : BEST8.2
        NU_NOTA_LC          : BEST8.2
        NU_NOTA_MT          : BEST8.2
        TX_RESPOSTAS_CN  : $CHAR45.
        TX_RESPOSTAS_CH  : $CHAR45.
        TX_RESPOSTAS_LC  : $CHAR50.
        TX_RESPOSTAS_MT  : $CHAR45.
        TP_LINGUA        : $CHAR1.
        TX_GABARITO_CN      : $CHAR45.
        TX_GABARITO_CH      : $CHAR45.
        TX_GABARITO_LC      : $CHAR50.
        TX_GABARITO_MT      : $CHAR45.
        TP_STATUS_REDACAO :$CHAR2.
        NU_NOTA_COMP1    : BEST3.
        NU_NOTA_COMP2    : BEST3.
        NU_NOTA_COMP3    : BEST3.
        NU_NOTA_COMP4    : BEST3.
        NU_NOTA_COMP5    : BEST3.
        NU_NOTA_REDACAO  : BEST4.
        Q001             : $CHAR1.
        Q002             : $CHAR1.
        Q003             : $CHAR1.
        Q004             : $CHAR1.
        Q005             : $CHAR2.
        Q006             : $CHAR1.
        Q007             : $CHAR1.
        Q008             : $CHAR1.
        Q009             : $CHAR1.
        Q010             : $CHAR1.
        Q011             : $CHAR1.
        Q012             : $CHAR1.
        Q013             : $CHAR1.
        Q014             : $CHAR1.
        Q015             : $CHAR1.
        Q016             : $CHAR1.
        Q017             : $CHAR1.
        Q018             : $CHAR1.
        Q019             : $CHAR1.
        Q020             : $CHAR1.
        Q021             : $CHAR1.
        Q022             : $CHAR1.
        Q023             : $CHAR1.
        Q024             : $CHAR1.
        Q025             : $CHAR1.
        Q026             : $CHAR1.
        Q027             : $CHAR1.
        Q028             : $CHAR1.
        Q029             : $CHAR1.
        Q030             : $CHAR1.
        Q031             : $CHAR1.
        Q032             : $CHAR1.
        Q033             : $CHAR1.
        Q034             : $CHAR1.
        Q035             : $CHAR1.
        Q036             : $CHAR1.
        Q037             : $CHAR1.
        Q038             : $CHAR1.
        Q039             : $CHAR1.
        Q040             : $CHAR1.
        Q041             : $CHAR1.
        Q042             : $CHAR1.
        Q043             : $CHAR1.
        Q044             : $CHAR1.
        Q045             : $CHAR1.
        Q046             : $CHAR1.
        Q047             : $CHAR1.
        Q048             : $CHAR1.
        Q049             : $CHAR1.
        Q050             : $CHAR1. ;

ATTRIB IN_ESTUDA_CLASSE_HOSPITALAR	FORMAT = $IN_ESTUDA_CLASSE_HOSPITALAR3.;
ATTRIB IN_TREINEIRO					FORMAT = $IN_TREINEIRO3.;
ATTRIB TP_DEPENDENCIA_ADM_ESC 		FORMAT = $TP_DEPENDENCIA_ADM10.;
ATTRIB TP_LOCALIZACAO_ESC 			FORMAT = $TP_LOCALIZACAO10.;
ATTRIB TP_SIT_FUNC_ESC 				FORMAT = $TP_SIT_FUNC_ESC40.;
ATTRIB TP_SEXO 						FORMAT = $TP_SEXO10.;
ATTRIB TP_NACIONALIDADE 			FORMAT = $TP_NACIONAL.;
ATTRIB TP_ST_CONCLUSAO 				FORMAT = $TP_ST_CONCLUSAO52.;
ATTRIB TP_ANO_CONCLUIU				FORMAT = $TP_ANO_CONCLUIU15.;
ATTRIB TP_ESCOLA					FORMAT=$TP_ESCOLA13.;
ATTRIB TP_ENSINO 					FORMAT=$TP_ENSINO40.;
ATTRIB TP_ESTADO_CIVIL 				FORMAT=$TP_ESTADO_CIVIL40.;
ATTRIB TP_COR_RACA 					FORMAT=$TP_COR_RACA30.;
ATTRIB IN_BAIXA_VISAO 				FORMAT=$IN_BAIXA_VISAO3.;
ATTRIB IN_CEGUEIRA 					FORMAT=$IN_CEGUEIRA3.;
ATTRIB IN_SURDEZ 					FORMAT=$IN_SURDEZ3.;
ATTRIB IN_DEFICIENCIA_AUDITIVA 		FORMAT=$IN_DEFICIENCIA_AUDITIVA3.;
ATTRIB IN_SURDO_CEGUEIRA 			FORMAT=$IN_SURDO_CEGUEIRA3.;
ATTRIB IN_DEFICIENCIA_FISICA 		FORMAT=$IN_DEFICIENCIA_FISICA3.;
ATTRIB IN_DEFICIENCIA_MENTAL 		FORMAT=$IN_DEFICIENCIA_MENTAL3.;
ATTRIB IN_DEFICIT_ATENCAO 			FORMAT=$IN_DEFICIT_ATENCAO3.;
ATTRIB IN_DISLEXIA 					FORMAT=$IN_DISLEXIA3.;
ATTRIB IN_GESTANTE 					FORMAT=$IN_GESTANTE3.;
ATTRIB IN_LACTANTE 					FORMAT=$IN_LACTANTE3.;
ATTRIB IN_IDOSO 					FORMAT=$IN_IDOSO3.;
ATTRIB IN_DISCALCULIA				FORMAT=$IN_DISCALCULIA3.;
ATTRIB IN_AUTISMO 					FORMAT=$IN_AUTISMO3.;
ATTRIB IN_VISAO_MONOCULAR			FORMAT=$IN_VISAO_MONOCULAR3.;
ATTRIB IN_SABATISTA 				FORMAT=$IN_SABATISTA3.;
ATTRIB IN_OUTRA_DEF					FORMAT=$IN_OUTRA_DEF3.;
ATTRIB IN_SEM_RECURSO				FORMAT=$IN_SEM_RECURSO3.;
ATTRIB IN_NOME_SOCIAL				FORMAT=$IN_NOME_SOCIAL3.;
ATTRIB IN_BRAILLE 					FORMAT=$IN_BRAILLE3.;
ATTRIB IN_AMPLIADA_24 				FORMAT=$IN_AMPLIADA3.;
ATTRIB IN_AMPLIADA_18 				FORMAT=$IN_AMPLIADA3.;
ATTRIB IN_LEDOR 					FORMAT=$IN_LEDOR3.;
ATTRIB IN_ACESSO 					FORMAT=$IN_ACESSO3.;
ATTRIB IN_TRANSCRICAO 				FORMAT=$IN_TRANSCRICAO3.;
ATTRIB IN_LIBRAS 					FORMAT=$IN_LIBRAS3.;
ATTRIB IN_LEITURA_LABIAL 			FORMAT=$IN_LEITURA_LABIAL3.;
ATTRIB IN_MESA_CADEIRA_RODAS 		FORMAT=$IN_MESA_CADEIRA_RODAS3.;
ATTRIB IN_MESA_CADEIRA_SEPARADA 	FORMAT=$IN_MESA_CADEIRA_SEPARADA3.;
ATTRIB IN_APOIO_PERNA 				FORMAT=$IN_APOIO_PERNA3.;
ATTRIB IN_GUIA_INTERPRETE 			FORMAT=$IN_GUIA_INTERPRETE3.;
ATTRIB IN_MACA						FORMAT=$IN_MACA3.;
ATTRIB IN_COMPUTADOR 				FORMAT=$IN_COMPUTADOR3.;
ATTRIB IN_CADEIRA_ESPECIAL 			FORMAT=$IN_CADEIRA_ESPECIAL3.;
ATTRIB IN_CADEIRA_CANHOTO 			FORMAT=$IN_CADEIRA_CANHOTO3.;
ATTRIB IN_CADEIRA_ACOLCHOADA 		FORMAT=$IN_CADEIRA_ACOLCHOADA3.;
ATTRIB IN_PROVA_DEITADO 			FORMAT=$IN_PROVA_DEITADO3.;
ATTRIB IN_MOBILIARIO_OBESO 			FORMAT=$IN_MOBILIARIO_OBESO3.;
ATTRIB IN_LAMINA_OVERLAY 			FORMAT=$IN_LAMINA_OVERLAY3.;
ATTRIB IN_PROTETOR_AURICULAR 		FORMAT=$IN_PROTETOR_AURICULAR3.;
ATTRIB IN_MEDIDOR_GLICOSE 			FORMAT=$IN_MEDIDOR_GLICOSE3.;
ATTRIB IN_MAQUINA_BRAILE 			FORMAT=$IN_MAQUINA_BRAILE3.;
ATTRIB IN_SOROBAN 					FORMAT=$IN_SOROBAN3.;
ATTRIB IN_MARCA_PASSO 				FORMAT=$IN_MARCA_PASSO3.;
ATTRIB IN_SONDA 					FORMAT=$IN_SONDA3.;
ATTRIB IN_MEDICAMENTOS 				FORMAT=$IN_MEDICAMENTOS3.;
ATTRIB IN_SALA_INDIVIDUAL 			FORMAT=$IN_SALA_INDIVIDUAL3.;
ATTRIB IN_SALA_ESPECIAL 			FORMAT=$IN_SALA_ESPECIAL3.;
ATTRIB IN_SALA_ACOMPANHANTE 		FORMAT=$IN_SALA_ACOMPANHANTE3.;
ATTRIB IN_MOBILIARIO_ESPECIFICO 	FORMAT=$IN_MOBILIARIO_ESPECIFICO3.;
ATTRIB IN_MATERIAL_ESPECIFICO 		FORMAT=$IN_MATERIAL_ESPECIFICO3.;
ATTRIB IN_CERTIFICADO 				FORMAT=$IN_CERTIFICADO3.;
ATTRIB TP_PRESENCA_CN 				FORMAT=$TP_PRESENCA_CN20.;
ATTRIB TP_PRESENCA_CH 				FORMAT=$TP_PRESENCA_CH20.;
ATTRIB TP_PRESENCA_LC 				FORMAT=$TP_PRESENCA_LC20.;
ATTRIB TP_PRESENCA_MT 				FORMAT=$TP_PRESENCA_MT20.;
ATTRIB CO_PROVA_CN 					FORMAT=$CO_PROVA_CN35.;
ATTRIB CO_PROVA_CH 					FORMAT=$CO_PROVA_CH35.;
ATTRIB CO_PROVA_LC 					FORMAT=$CO_PROVA_LC35.;
ATTRIB CO_PROVA_MT 					FORMAT=$CO_PROVA_MT35.;
ATTRIB TP_LINGUA 					FORMAT=$TP_LINGUA10.;
ATTRIB TP_STATUS_REDACAO 			FORMAT=$TP_STATUS_REDACAO35.;
ATTRIB  NU_INSCRICAO   FORMAT = 21.;
ATTRIB  NU_NOTA_CN   FORMAT = 8.2;
ATTRIB  NU_NOTA_CH   FORMAT = 8.2;
ATTRIB  NU_NOTA_LC   FORMAT = 8.2;
ATTRIB  NU_NOTA_MT   FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP1    FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP2    FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP3    FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP4    FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP5    FORMAT = 8.2;
ATTRIB  NU_NOTA_REDACAO  FORMAT = 8.2;
ATTRIB Q001  FORMAT=$Qum.;
ATTRIB Q002  FORMAT=$Qdois.;
ATTRIB Q003  FORMAT=$Qtres.;
ATTRIB Q004  FORMAT=$Qquatro.;
ATTRIB Q005  FORMAT=$Qcinco.;
ATTRIB Q006  FORMAT=$Qseis.;
ATTRIB Q007  FORMAT=$Qsete.;
ATTRIB Q008  FORMAT=$Qoito.;
ATTRIB Q009  FORMAT=$Qnove.;
ATTRIB Q010 FORMAT=$Qdez.;
ATTRIB Q011 FORMAT=$Qonze.;
ATTRIB Q012 FORMAT=$Qdoze.;
ATTRIB Q013 FORMAT=$Qtreze.;
ATTRIB Q014 FORMAT=$Qcatorze.;
ATTRIB Q015 FORMAT=$Qquinze.;
ATTRIB Q016 FORMAT=$Qdezesseis.;
ATTRIB Q017 FORMAT=$Qdezessete.;
ATTRIB Q018 FORMAT=$Qdezoito.;
ATTRIB Q019 FORMAT=$Qdezenove.;
ATTRIB Q020 FORMAT=$Qvinte.;
ATTRIB Q021 FORMAT=$Qvinteum.;
ATTRIB Q022 FORMAT=$Qvintedois.;
ATTRIB Q023 FORMAT=$Qvintetres.;
ATTRIB Q024 FORMAT=$Qvintequatro.;
ATTRIB Q025 FORMAT=$Qvintecinco.;
ATTRIB Q026 FORMAT=$Qvinteseis.;
ATTRIB Q027 FORMAT=$Qvintesete.;
ATTRIB Q028 FORMAT=$Qvinteoito.;
ATTRIB Q042 FORMAT=$Qquarentadois.;
ATTRIB Q043 FORMAT=$Qquarentatres.;
ATTRIB Q044 FORMAT=$Qquarentaquatro.;
ATTRIB Q045 FORMAT=$Qquarentacinco.;
ATTRIB Q046 FORMAT=$Qquarentaseis.;
ATTRIB Q047 FORMAT=$Qquarentasete.;
ATTRIB Q048 FORMAT=$Qquarentaoito.;
ATTRIB Q049 FORMAT=$Qquarentanove.;
ATTRIB Q050 FORMAT=$Qcinquenta.;


LABEL

NU_INSCRICAO    =   'N�mero de inscri��o'
NU_ANO    =   'Ano do Enem'
CO_MUNICIPIO_RESIDENCIA   =   'C�digo do munic�pio de resid�ncia'
NO_MUNICIPIO_RESIDENCIA   =   'Nome do munic�pio de resid�ncia'
CO_UF_RESIDENCIA   =   'C�digo da Unidade da Federa��o de resid�ncia'
SG_UF_RESIDENCIA   =   'Sigla da Unidade da Federa��o de resid�ncia'
IN_ESTUDA_CLASSE_HOSPITALAR   =   'Indicador de inscri��o em Unidade Hospitalar'
IN_TREINEIRO = 'Indica se o inscrito fez a prova com intuito de apenas treinar seus conhecimentos'
CO_ESCOLA   =   'C�digo da Escola'
CO_MUNICIPIO_ESC   =   'C�digo do munic�pio da escola' 
NO_MUNICIPIO_ESC   =   'Nome do munic�pio da escola'
CO_UF_ESC   =   'C�digo da Unidade da Federa��o da escola'
SG_UF_ESC   =   'Sigla da Unidade da Federa��o da escola'
TP_DEPENDENCIA_ADM_ESC   =   'Depend�ncia administrativa (Escola)'
TP_LOCALIZACAO_ESC   =   'Localiza��o (Escola)'
TP_SIT_FUNC_ESC   =   'Situa��o de funcionamento (Escola)'
NU_IDADE    =   'Idade'
TP_SEXO    =   'Sexo'
TP_NACIONALIDADE   =   'Nacionalidade'
CO_MUNICIPIO_NASCIMENTO   =   'C�digo do munic�pio de nascimento'
NO_MUNICIPIO_NASCIMENTO   =   'Nome do munic�pio de nascimento'
CO_UF_NASCIMENTO   =   'C�digo da Unidade da Federa��o de nascimento'
SG_UF_NASCIMENTO   =   'Sigla da Unidade da Federa��o de nascimento'
TP_ST_CONCLUSAO    =   'Situa��o de conclus�o do Ensino M�dio'
TP_ANO_CONCLUIU    =   'Ano de Conclus�o do Ensino M�dio'
TP_ESCOLA    =   'Tipo de escola do Ensino M�dio'
TP_ENSINO    =   'Tipo de institui��o que concluiu ou concluir� o Ensino M�dio'
TP_ESTADO_CIVIL    =   'Estado Civil' 
TP_COR_RACA    =   'Cor/ra�a'
IN_BAIXA_VISAO    =   'Indicador de baixa vis�o'
IN_CEGUEIRA    =   'Indicador de cegueira'
IN_SURDEZ    =   'Indicador de surdez'
IN_DEFICIENCIA_AUDITIVA    =   'Indicador de defici�ncia auditiva'
IN_SURDO_CEGUEIRA    =   'Indicador de surdo-cegueira'
IN_DEFICIENCIA_FISICA    =   'Indicador de defici�ncia f�sica'
IN_DEFICIENCIA_MENTAL    =   'Indicador de defici�ncia mental'
IN_DEFICIT_ATENCAO    =   'Indicador de d�ficit de aten��o'
IN_DISLEXIA    =   'Indicador de dislexia'
IN_GESTANTE    =   'Indicador de gestante'
IN_LACTANTE    =   'Indicador de lactante'
IN_IDOSO    =   'Indicador de inscrito idoso'
IN_DISCALCULIA =	'Indicador de discalculia'
IN_AUTISMO   =   'Indicador de autismo'
IN_VISAO_MONOCULAR = 'Indicador de vis�o monocular'
IN_SABATISTA    =   'Indicador de solicita��o de prova aplicada em hor�rio diferenciado para os guardadores dos s�bados'
IN_OUTRA_DEF	=	'Indicador de outra defici�ncia ou condi��o especial'
IN_SEM_RECURSO	=	'Indicador de inscrito que n�o requisitou nenhum recurso'
IN_BRAILLE    =   'Indicador de solicita��o de prova em braille'
IN_AMPLIADA_24    =   'Indicador de solicita��o de prova super ampliada com fonte tamanho 24'
IN_AMPLIADA_18    =   'Indicador de solicita��o de prova super ampliada com fonte tamanho 18'
IN_LEDOR    =   'Indicador de solicita��o de aux�lio de ledor'
IN_ACESSO    =   'Indicador de solicita��o de sala de f�cil acesso'
IN_TRANSCRICAO    =   'Indicador de solicita��o para transcri��o'
IN_LIBRAS    =   'Indicador de solicita��o de Tradutor-Int�rprete Libras'
IN_LEITURA_LABIAL   =   'Indicador de solicita��o de leitura labial'
IN_MESA_CADEIRA_RODAS    =   'Indicador de solicita��o de mesa para cadeira de rodas'
IN_MESA_CADEIRA_SEPARADA    =   'Indicador de solicita��o de mesa e cadeira separadas'
IN_APOIO_PERNA    =   'Indicador de solicita��o de apoio de perna e p�'
IN_GUIA_INTERPRETE    =   'Indicador de solicita��o de guia int�rprete'
IN_MACA	=		'Indicador de solicita��o de maca'
IN_COMPUTADOR 			= 'Indicador de solicita��o de computador'
IN_CADEIRA_ESPECIAL 	= 'Indicador de solicita��o de cadeira especial'
IN_CADEIRA_CANHOTO 		= 'Indicador de solicita��o de cadeira para canhoto'
IN_CADEIRA_ACOLCHOADA 	= 'Indicador de solicita��o de cadeira acolchoada'
IN_PROVA_DEITADO 		= 'Indicador de solicita��o para fazer prova deitado em maca ou mobili�rio similar'
IN_MOBILIARIO_OBESO 	= 'Indicador de solicita��o de mobili�rio adequado para obeso' 
IN_LAMINA_OVERLAY 		= 'Indicador de solicita��o de l�mina overlay'
IN_PROTETOR_AURICULAR 	= 'Indicador de solicita��o de protetor auricular'
IN_MEDIDOR_GLICOSE 		= 'Indicador de solicita��o de medidor de glicose e/ou aplica��o de insulina'
IN_MAQUINA_BRAILE 		= 'Indicador de solicita��o de m�quina Braile e/ou Reglete e Pun��o'
IN_SOROBAN 				= 'Indicador de solicita��o de soroban'
IN_MARCA_PASSO 			= 'Indicador de solicita��o de marca-passo (impeditivo de uso de detector de metais)'
IN_SONDA				= 'Indicador de solicita��o de sonda com troca peri�dica'
IN_MEDICAMENTOS 		= 'Indicador de solicita��o de medicamentos'
IN_SALA_INDIVIDUAL 		= 'Indicador de solicita��o de sala especial individual'
IN_SALA_ESPECIAL 		= 'Indicador de solicita��o de sala especial at� 20 participantes'
IN_SALA_ACOMPANHANTE 	= 'Indicador de solicita��o de sala reservada para acompanhantes'
IN_MOBILIARIO_ESPECIFICO = 'Indicador de solicita��o de mobili�rio espec�fico'
IN_MATERIAL_ESPECIFICO	= 'Indicador de solicita��o de material espec�fico'
IN_NOME_SOCIAL	=	'Indicador de inscrito que se declarou travesti, transexual ou transg�nero e solicitou atendimento pelo Nome Social, conforme � reconhecido socialmente em conson�ncia com sua identidade de g�nero'
IN_CERTIFICADO   =   'Indicador de solicita��o de certifica��o no Ensino M�dio'
NO_ENTIDADE_CERTIFICACAO   =   'Nome da Entidade Certificadora'
CO_UF_ENTIDADE_CERTIFICACAO    =   'C�digo da Unidade da Federa��o da Entidade Certificadora'
SG_UF_ENTIDADE_CERTIFICACAO   =   'Sigla da Unidade da Federa��o da Entidade Certificadora'
CO_MUNICIPIO_PROVA    =   'C�digo do munic�pio da aplica��o da prova'
NO_MUNICIPIO_PROVA   =   'Nome do munic�pio da aplica��o da prova'
CO_UF_PROVA    =   'C�digo da Unidade da Federa��o da aplica��o da prova'
SG_UF_PROVA    =   'Sigla da Unidade da Federa��o da aplica��o da prova'
TP_PRESENCA_CN    =   'Presen�a na prova objetiva de Ci�ncias da Natureza'
TP_PRESENCA_CH    =   'Presen�a na prova objetiva de Ci�ncias Humanas'
TP_PRESENCA_LC    =   'Presen�a na prova objetiva de Linguagens e C�digos'
TP_PRESENCA_MT    =   'Presen�a na prova objetiva de Matem�tica'
NU_NOTA_CN   =   'Nota da prova de Ci�ncias da Natureza'
NU_NOTA_CH   =   'Nota da prova de Ci�ncias Humanas'
NU_NOTA_LC   =   'Nota da prova de Linguagens e C�digos'
NU_NOTA_MT   =   'Nota da prova de Matem�tica'
TX_RESPOSTAS_CN    =   'Vetor com as respostas da parte objetiva da prova de Ci�ncias da Natureza'
TX_RESPOSTAS_CH    =   'Vetor com as respostas da parte objetiva da prova de Ci�ncias Humanas' 
TX_RESPOSTAS_LC    =   'Vetor com as respostas da parte objetiva da prova de Linguagens e C�digos' 
TX_RESPOSTAS_MT    =   'Vetor com as respostas da parte objetiva da prova de Matem�tica' 
CO_PROVA_CN    =   'C�digo do tipo de prova de Ci�ncias da Natureza'
CO_PROVA_CH    =   'C�digo do tipo de prova de Ci�ncias Humanas'
CO_PROVA_LC    =   'C�digo do tipo de prova de Linguagens e C�digos'
CO_PROVA_MT    =   'C�digo do tipo de prova de Matem�tica'
TP_LINGUA   =   'Tipo de L�ngua Estrangeira'
TX_GABARITO_CN   =   'Vetor com o gabarito da parte objetiva da prova de Ci�ncias da Natureza'
TX_GABARITO_CH   =   'Vetor com o gabarito da parte objetiva da prova de Ci�ncias Humanas'
TX_GABARITO_LC   =   'Vetor com o gabarito da parte objetiva da prova de Linguagens e C�digos'
TX_GABARITO_MT   =   'Vetor com o gabarito da parte objetiva da prova de Matem�tica'
TP_STATUS_REDACAO  =   'Situa��o da reda��o do participante'
NU_NOTA_COMP1   =   'Nota da compet�ncia 1'
NU_NOTA_COMP2   =   'Nota da compet�ncia 2'
NU_NOTA_COMP3   =   'Nota da compet�ncia 3'
NU_NOTA_COMP4   =   'Nota da compet�ncia 4'
NU_NOTA_COMP5   =   'Nota da compet�ncia 5'
NU_NOTA_REDACAO   =   'Nota da prova de reda��o'
Q001    =   'At� que s�rie seu pai, ou o homem respons�vel por voc�, estudou?'
Q002    =   'At� que s�rie sua m�e, ou a mulher respons�vel por voc�, estudou?'
Q003    =   'Indique o grupo que contempla a ocupa��o mais pr�xima da ocupa��o do seu pai ou do homem respons�vel por voc�'
Q004    =   'Indique o grupo que contempla a ocupa��o mais pr�xima da ocupa��o da sua m�e ou da mulher respons�vel por voc�'
Q005    =   'Incluindo voc�, quantas pessoas moram atualmente em sua resid�ncia?'
Q006    =   'Qual � a renda mensal de sua fam�lia? (Some a sua renda com a dos seus familiares.)'
Q007    =   'Em sua resid�ncia trabalha empregado(a) dom�stico(a)?'
Q008    =   'Na sua resid�ncia tem banheiro?'
Q009    =   'Na sua resid�ncia tem quartos para dormir?'
Q010   =    'Na sua resid�ncia tem carro?'
Q011   =    'Na sua resid�ncia tem motocicleta?'
Q012   =    'Na sua resid�ncia tem geladeira?'
Q013   =    'Na sua resid�ncia tem freezer (independente ou segunda porta da geladeira)?'
Q014   =    'Na sua resid�ncia tem m�quina de lavar roupa (o tanquinho N�O deve ser considerado)?'
Q015   =    'Na sua resid�ncia tem m�quina de secar roupa (independente ou em conjunto com a m�quina de lavar roupa)?'
Q016   =    'Na sua resid�ncia tem forno micro-ondas?'
Q017   =    'Na sua resid�ncia tem m�quina de lavar lou�a?'
Q018   =    'Na sua resid�ncia tem aspirador de p�?'
Q019   =    'Na sua resid�ncia tem televis�o em cores?'
Q020   =    'Na sua resid�ncia tem aparelho de DVD?'
Q021   =    'Na sua resid�ncia tem TV por assinatura?'
Q022   =    'Na sua resid�ncia tem telefone celular?'
Q023   =    'Na sua resid�ncia tem telefone fixo?'
Q024   =    'Na sua resid�ncia tem computador?'
Q025   =    'Na sua resid�ncia tem acesso � Internet?'
Q026   =    'Voc� exerce ou j� exerceu atividade remunerada?'
Q027   =    'Com que idade voc� come�ou a exercer uma atividade remunerada?'
Q028   =    'Quantas horas semanais voc� trabalha ou trabalhava aproximadamente? (Considere a atividade remunerada mais recente.)'
Q029   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Ajudar meus pais nas despesas com a casa'
Q030   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Sustentar minha fam�lia (esposo/a, filhos/as etc.)'
Q031   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Ser independente/ganhar meu pr�prio dinheiro'
Q032   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Adquirir experi�ncia'
Q033   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Custear/pagar meus estudos'
Q034   =    'Indique os motivos que levaram voc� a participar do ENEM: Testar meus conhecimentos, para aumentar as minhas chances de ingressar na Educa��o Superior'
Q035   =    'Indique os motivos que levaram voc� a participar do ENEM: Ingressar na Educa��o Superior p�blica'
Q036   =    'Indique os motivos que levaram voc� a participar do ENEM: Ingressar na Educa��o Superior privada'
Q037   =    'Indique os motivos que levaram voc� a participar do ENEM: Conseguir uma bolsa de estudos (ProUni, outras)'
Q038   =    'Indique os motivos que levaram voc� a participar do ENEM: Participar do Programa de Financiamento Estudantil � FIES'
Q039   =    'Indique os motivos que levaram voc� a participar do ENEM: Participar do Programa Ci�ncias Sem Fronteiras'
Q040   =    'Indique os motivos que levaram voc� a participar do ENEM: Aumentar a possibilidade de conseguir um emprego'
Q041   =    'Indique os motivos que levaram voc� a participar do ENEM: Progredir no meu emprego atual'
Q042   =    'Em que tipo de escola voc� frequentou o Ensino Fundamental?'
Q043   =    'Marque entre as op��es abaixo aquela que melhor descreve a modalidade de Ensino Fundamental que voc� frequentou'
Q044   =    'Em que turno voc� frequentou o Ensino Fundamental?'
Q045   =    'Durante o Ensino Fundamental, voc� abandonou os estudos e/ou foi reprovado?'
Q046   =    'Voc� j� concluiu ou est� concluindo o Ensino M�dio?'
Q047   =    'Em que tipo de escola voc� frequentou o Ensino M�dio?'
Q048   =    'Marque entre as op��es abaixo aquela que melhor descreve a modalidade de Ensino M�dio que voc� frequentou'
Q049   =    'Em que turno voc� frequentou o Ensino M�dio?'
Q050   =    'Durante o Ensino M�dio, voc� abandonou os estudos por algum tempo e/ou foi reprovado?';                                                                                                                 ;                                                                                                                                                      


IF NU_INSCRICAO = . THEN DELETE;

RUN;