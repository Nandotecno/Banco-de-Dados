/*SQL - DDL (DATA DEFINITION LIGUAGE)
/*      DML (DATA MANIPULATION LIGUAGE)

create database Mercearia;
use Mercearia;

create tabale categoria {
	codigo list not null,
	nome vachar(20) not null,
	contraint pk_categoraia primaruy key (Codigo)
	};
	create table Produto {
	Codigo int not null,
	Descricao vachar(30) not null,
	Precovenda double not null,
	PrecoCusto double not null,
	Codigocategoria int not null
	contraint pk_produto primary key (Codigo),
	contraint fk_categoria_produto foreign key (Codigocategoria)
		references Categoria (Codigo) on delete restrict
		};
		Alter table Produto add colun feijao vachar(10)not null;
		alter table Produto drop feijao;
		
		drop table Categoria
		
		insert into Categoria values(1, 'Papelaria');
		insert into Categoria values(2, 'Informatica');
		insert into Categoria values(3, 'Religiosos');
		
		insert into Produro values(1,'caderno', 5.45, 1.80, 1);
		insert into Produro values(2,'caneta', 1.20, 0., 1);
		insert into Produro values(3,'CD', 1.80, 0.80, 1);
		insert into Produro values(1,'mouse', 14.00, 5.00, 2);
		
		update Produto set Precovenda = 16 where Codigo = 4;
		
		insert Produto values(5,'santinho', 55.90 ,20.00, 5);
		delete from poduto
		
