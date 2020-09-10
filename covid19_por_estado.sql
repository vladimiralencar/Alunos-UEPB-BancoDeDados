#create database aulas;

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

