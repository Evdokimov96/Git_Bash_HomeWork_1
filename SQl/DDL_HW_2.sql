--Таблица employees
--
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.


create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees 


insert into employees (employee_name)
values ('Thorsten'),
		('Dame'),
		('Haley'),
		('Franky'),
('Simon'),
('Barron'),
('Arvy'),
('Karoly'),
('Ellerey'),
('Elsinore'),
('Martie'),
('Tymon'),
('Willy'),
('Adel'),
('Allard'),
('Tedie'),
('Kingsly'),
('Ferdinand'),
('Urson'),
('Jacquenette'),
('Aurlie'),
('Irena'),
('Silvan'),
('Clarey'),
('Jessamyn'),
('Anselma'),
('Retha'),
('Tate'),
('Niels'),
('Lesli'),
('Ingrim'),
('Ivie'),
('Janean'),
('Terencio'),
('Damien'),
('Novelia'),
('Brucie'),
('Avie'),
('Sena'),
('Vania'),
('Charin'),
('Patricio'),
('Andree'),
('Stephanus'),
('Natalya'),
('Leroi'),
('Adler'),
('Nickie'),
('Bernetta'),
('Mahmud'),
('Sullivan'),
('Perceval'),
('Ernaline'),
('Patty'),
('Carolyne'),
('Hayyim'),
('Bond'),
('Grove'),
('Norry'),
('Bryn'),
('Durward'),
('Ursulina'),
('Amy'),
('Dionis'),
('Gabbi'),
('Lek'),
('Evelyn'),
('Zia'),
('Melita'),
('Sanford');

select * from employees 



--Таблица salary_1
--
--Создать таблицу salary_1
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:

create table salary_1 (
id serial primary key, 
monthy_salary int  not null
);

insert into salary_1 (monthy_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

select * from salary_1



--Таблица employee_salary
--
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id


create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (employee_id,salary_id)
values (70,1),
		(9,2),
		(68,3),
		(67,4),
		(66,5),
		(65,6),
		(64,7),
		(24,8),
		(63,12),
		(62,9),
		(45,13),
		(23,15),
		(49,5),
		(649,6),
		(669,7),
		(7,8),
		(691,9),
		(698,15),
		(169,11),
		(8,15),
		(629,14),
		(469,13),
		(39,10),
		(29,12),
		(59,11),
		(69,9),
		(19,8),
		(3,7),
		(61,6),
		(2,5),
		(58,4),
		(20,3),
		(34,2),
		(54,1),
		(11,3),
		(6,4),
		(37,5),
		(17,6),
		(22,7),
		(33,8),
		(44,9),
		(55,10),
		(28,11),
		(43,12),
		(47,13),
		(41,14),
		(21,15),
		(16,14);
	

	select * from employee_salary
	
	
--	Таблица roles_1
--
--Создать таблицу roles_1
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:
	
	create table roles_1 (
id serial primary key,
role_name int not null unique 
	);

select * from roles_1 

alter table roles_1
alter column role_name type varchar(30) using role_name :: varchar (30);

select * from roles_1 


insert into roles_1 (role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior  Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
	
	select * from roles_1 
	
	
--	Таблица roles_employee
--
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
	
	
	create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null ,
	foreign key (employee_id)
	references employees (id),
	foreign key (role_id)
	references roles_1 (id)

	);

select * from roles_employee 

insert into roles_employee (employee_id,role_id)
values (70,15),
		(69,1),
		(25,2),
		(26,3),
		(27,4),
		(30,5),
		(11,6),
		(28,7),
		(13,8),
		(14,9),
		(17,10),
		(1,11),
		(2,12),
		(3,3),
		(4,15),
		(5,15),
		(6,7),
		(37,12),
		(20,14),
		(57,10),
		(67,2),
		(10,8),
		(51,7),
		(12,8),
		(53,8),
		(18,10),
		(15,9),
		(66,10),
		(43,2),
		(59,11),
		(63,2),
		(36,3),
		(47,4),
		(34,5),
		(23,6),
		(32,7),
		(38,8),
		(55,1),
		(44,11),
		(22,15),
		(33,13);
		

	select * from roles_employee 
		
	
==============================================================================================================
		
select * from employees;
select * from salary_1;
select * from roles_1;
select * from employee_salary;
select * from roles_employee ;

