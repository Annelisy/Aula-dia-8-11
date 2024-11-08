show tables;
select * from brinquedo;
select * from cargo;
select * from funcionario;
select * from marca;
select * from tipo_brinquedo;
/*--------------------------------------------------------------------*/
alter table funcionario
add column id_cargo int;
 
alter table funcionario
add constraint id_cargo
foreign key (id_cargo)
references cargo(id_cargo);
 
alter table brinquedo
add column id_marca int;
 
alter table brinquedo
add column id_tipo_brinquedo int;
 
alter table brinquedo
add constraint id_tipo_brinquedo
foreign key (id_tipo_brinquedo)
references tipo_brinquedo(id_tipo_brinquedo);
/*--------------------------------------------------------------------*/
 
insert into cargo (id_cargo, nome_cargo, salario)
values(1, 'Repositor', 1412);
 
update funcionario
set id_cargo = 1
where id_funcionario = 1;
 
insert into marca(id_marca, nome_marca) 
values (1, 'Nike');
 
insert into tipo_brinquedo(id_tipo_brinquedo, categoria)
values (1, 'bola');
 
insert into brinquedo (id_brinquedo, nome_brinquedo, valor, id_marca, id_tipo_brinquedo)
values (1,'bola do Corinthians', 12, 1, 1);
 
 
update brinquedo 
set valor = 100
where id_brinquedo = 1;