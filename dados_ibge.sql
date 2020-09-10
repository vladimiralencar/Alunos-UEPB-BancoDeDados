use aulas;

create table ibge_uf (
UF                                    char(50),
Codigo                                int,
Area_km2                              float,
Populacao                             int,
Densidade_demografica                 float,
Matriculas_ensino_fundamental         int,
IDH                                   float,
Rendimento_mensal_domiciliar_Reais    int
);

describe ibge_uf;

insert into ibge_uf values
("Acre",12,164123.964,894470,4.47,157646,0.6629999999999999,890),
("Alagoas",27,27843.295,3351543,112.33,490587,0.631,731);

select * from ibge_uf;