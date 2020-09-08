create database aulas;

show databases;

use aulas;

show tables;

use aulas;
create table covid19 (
estado char(30),
Total_casos int,
Casos_milhao int,
Mortes int
);

describe covid19;

insert into covid19 values
('São Paulo', 	 	857330,	         	19469,	 		31377),
('Bahia',		 	271963	,			17979,				5693);


select * from covid19;






Estado	     	 Total_casos    	Casos_milhao	Mortes
São Paulo 	 	857330	         	19469	 		31377
Bahia		 	271963				17979				5693
Minas Gerais  	 236012		11309			5851
Rio de Janeiro	 233052		14158			16593
Ceará		 	219672		24842			8493
Pará		 	208259		25794			6257
Santa Catarina  189477		28166			2422
Distrito Federal 170806		66457			2720
Maranhão		158310		23108			3518
Goiás			147728		22646			3475
Rio Grande do Sul 143952		12754			3756
Paraná		143853		12981			3577
Pernambuco   132420			14273			7721
Amazonas	123905		31986			3849
Espírito Santo 115793			29805			3268
Paraíba	109706		27817			2550

