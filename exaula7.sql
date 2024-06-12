create database EX_AULA7;

use project_AULA7;

create table piloto(
pil_fone integer (11),
pil_dt_nasc date,
pil_cidade varchar(15),
pil_endereco varchar(15),
pil_nome varchar (30),
pil_cod integer (70)
);
create table descente(
desc_endereco varchar(15),
desc_CPF integer(11),
desc_cidade varchar(15),
desc_name varchar(30)
);