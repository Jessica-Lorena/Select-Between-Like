/*Crie um banco de dados com o nome de “db_diversos”;
Dentro desse banco de dados devem conter as seguintes tabelas e os seguintes SELECT’s:
1. Uma tabela que represente uma escola, contendo: 
	- ID do aluno;
	- Idade do aluno;
	- + 5 informações que você considera importante;

	*Importante a tabela precisa ter 15 dados de alunos;
	- Para essa tabela considere fazer o SELECT que retorne:
	- Todos os participantes maiores que 18 anos;
	- Todos os participantes menores que 18 anos;
	- Todos os participantes com a idade entre 20 e 25 anos;

2. Uma tabela que represente um petshop, contendo: 
	- ID do animal;
	- Peso do animal;
	- + 5 informações que você considera importante;

	*Importante a tabela também precisa ter 15 dados;
	- Para essa tabela considere fazer o SELECT que retorne:
	- Todos os animais maiores que 10 quilos;
	- Todos os animais menores que 10 quilos;
	- Todos os animais peso entre 10 e 30 quilos;

3. Uma tabela que represente um varejo, contendo: 
	- ID do produto;
	- Preço do produto;
	- Categoria do produto ( Ex: quarto/sala / cozinha / banheiro)
	- + 4 informações que você considera importante;

	*Importante a tabela também precisa ter 15 dados;
	- Para essa tabela considere fazer o SELECT que retorne:
	- Todos os produtos que comecem com a letra “A”;
	- Todos os produtos de uma determinada categoria;
	- Todos os produtos entre $ 1.000 e 1.500 de uma determinada categoria; 
	- Todos os produtos listados por uma categoria utilizando like;*/

create database db_diversos;

use db_diversos;
create table tb_escola(
	id bigint(5) auto_increment,
    nome varchar(200) not null,
    idade int(3) not null,
    endereco varchar(200),
    faltas int (3),
    nota decimal (5,2),
    foto boolean,
    primary key (id)
);

insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("José",16,"Rua do Limoeiro", 3, 8,true);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Ana",37,"Rua da Laranjeira", 7, 4.2,true);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Maria",23,"Rua do Abacateiro", 4, 2.8,true);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Luis",21,"Rua do Cajueiro", 6, 6.5,false);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Antonia",15,"Rua da Macieira", 0, 9.1,false);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("João",42,"Rua da Cerejeira", 2, 7.2,true);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Mariana",18,"Rua da Pitangueira", 1, 7.6,false);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Felipe",22,"Rua Pereira", 3, 8.2,false);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Luana",47,"Rua da Jabuticabeira", 5, 6.8,true);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Joana",68,"Rua Mangueira", 1, 6.9,false);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Laura",27,"Rua da Romãzeira", 15, 2.3,true);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Junior",32,"Rua da Figueira", 9, 3.9,true);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Rosane",39,"Rua da Goiabeira", 8, 1.6,true);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Arlindo",72,"Rua da Abóbora", 4, 8.7,false);
insert into tb_escola (nome, idade, endereco, faltas, nota, foto) values ("Lucas",25,"Rua da Melancia", 2, 7.3,true);

select * from tb_escola where idade >= 18;
select * from tb_escola where idade < 18;
select * from tb_escola where idade between 20 and 25;


use db_diversos;
create table tb_petshop(
	id bigint(5) auto_increment,
    nome varchar(200) not null,
    idade int(3) not null,
    endereco varchar(200),
    animal varchar (200),
    peso decimal (5,2),
    vacina boolean,
    primary key (id)
);

insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("José",16,"Rua do Limoeiro", "Cachorro", 22.4,true);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Ana",37,"Rua da Laranjeira", "Cabra", 88.6,true);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Maria",23,"Rua do Abacateiro", "Ovelha", 72.8,true);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Luis",21,"Rua do Cajueiro", "Tigre", 266.5,false);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Antonia",15,"Rua da Macieira", "Vaca", 749.1,false);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("João",42,"Rua da Cerejeira", "Sapo", 0.22,true);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Mariana",18,"Rua da Pitangueira", "Zebra", 327.6,false);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Felipe",22,"Rua Pereira", "Lobo", 78.2,false);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Luana",47,"Rua da Jabuticabeira", "Hamster", 0.45,true);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Joana",68,"Rua Mangueira", "Tartaruga", 260.9,false);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Laura",27,"Rua da Romãzeira", "Mico-Leão", 0.78,true);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Junior",32,"Rua da Figueira", "Raposa", 13.9,true);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Rosane",39,"Rua da Goiabeira", "Panda", 81.6,true);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Arlindo",72,"Rua da Abóbora", "Leão", 138.7,false);
insert into tb_petshop (nome, idade, endereco, animal, peso, vacina) values ("Lucas",25,"Rua da Melancia", "Camaleão", 2.3,true);

select * from tb_petshop where peso >= 10;
select * from tb_petshop where peso < 10;
select * from tb_petshop where peso between 10 and 30;


use db_diversos;
create table tb_varejo(
	id bigint(5) auto_increment,
    nome varchar(200) not null,
    categoria varchar(200) not null,
    marca varchar(200),
    preco decimal (10,2),
    peso decimal (5,2),
    bivolt boolean,
    primary key (id)
);

insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Monitor","Escritório","LG", 675.89, 2.5, true);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Celular","Aparelho Manual Pessoal","Samsung", 2345.99, 0.28, true);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Air Fryer","Cozinha","Mondial", 289.99, 5.3, false);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Microondas","Cozinha","Britânia", 383.05, 14.73, false);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Geladeira","Cozinha","Philco", 3457.75, 2.5, true);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Xbox","Sala de Estar","Microsoft", 2698.00, 2.0, true);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("PlayStation","Sala de Estar","Sony", 3876.05, 2.1, true);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Televisão","Sala de Estar","Philips", 2199.00, 12.7, false);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Pipoqueira","Cozinha","Mondial", 89.00, 0.65, false);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Liquidificador","Cozinha","Britânia", 98.63, 1.8, false);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Batedeira","Cozinha","Britânia", 185.65, 3.2, false);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Secador","Aparelho Manual","Mondial", 128.32, 0.8, false);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Chapinha","Aparelho Manual","Taiff", 98.90, 0.7, false);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Ondulador","Aparelho Manual","Titânio", 160.94, 2.5, true);
insert into tb_varejo (nome, categoria, marca, preco, peso, bivolt) values ("Ar Condicionado","Sala de Estar","LG", 1439.10, 31.2, false);

select * from tb_varejo where nome like "A%";
select * from tb_varejo where categoria ="Cozinha";
select * from tb_varejo where preco between 1000 and 1500 
	and categoria = "Sala de Estar";
select * from tb_varejo where categoria like "%pare%";