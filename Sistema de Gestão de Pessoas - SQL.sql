-- 2 A) --

create table Depto(
	cd_depto integer primary key,
	ds_depto varchar(30)
);

create sequence seq_depto;

insert into Depto values (nextval('seq_depto'), 'TI');

-- 2 B) --

create table Pssoa(
	cd_pssoa integer primary key,
	cd_depto integer,
	ds_pssoa varchar(50),
	constraint fk_depto foreign key(cd_depto) references Depto(cd_depto)
	

);

create sequence seq_pssoa;

insert into Pssoa values (nextval('seq_pssoa'), (Select cd_depto from Depto where ds_depto = 'TI'),
						 'Rodolfo');
						 
-- 2 C) --

alter table Pssoa
add column dt_nasc date;

update Pssoa
set dt_nasc = '2000-10-18'
where ds_pssoa = 'Rodolfo';

-- 2 D) --

select ds_pssoa, dt_nasc
from Pssoa
where date_part('month', dt_nasc) = 9;

-- 2 E) --

create view lotacao (nome, depto) as
select p.ds_pssoa, d.ds_depto
from pssoa p, depto d
where d.cd_depto = p.cd_depto;

select * from lotacao

-- 2 E) --

create view Pessoas (nome) as
select ds_pssoa
from Pssoa
order by ds_pssoa desc;

select * from Pessoas