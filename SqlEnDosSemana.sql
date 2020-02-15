
Create DataBase Aprendiendo_SQLDB

-- 2 - Crear una tabla (create table - sp_tables - sp_columns - drop table)


if object_id('agenda') is not null
  drop table agenda;

create table  agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
  )


  exec sp_tables @table_owner='dbo'
  exec sp_columns agenda

  -- 3 - Insertar y recuperar registros de una tabla (insert into - select)

  insert into agenda (apellido, nombre, domicilio, telefono) values ('Moreno','Alberto','Colon 123','4234567');
  insert into agenda (apellido,nombre, domicilio, telefono) values ('Torres','Juan','Avellaneda 135','4458787'); 

  select * from agenda 

  -- 4 - Tipos de datos básicos

  if object_id('peliculas')is not null
  drop table peliculas


  create table peliculas(
  nombre varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 )
 Drop table peliculas


  create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 )

 exec sp_tables @table_owner='dbo'

 Insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',128,3)
 
 Insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',130,2)
 
 Insert into peliculas (titulo, actor, duracion, cantidad) values ('Mujer bonita','Julia Roberts',118,3)
 
 Insert into peliculas (titulo, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',110,2)

 Select * From peliculas


 -- 5 - Recuperar algunos campos (select)

     
  Use Aprendiendo_SQLDB

  Select titulo actor From peliculas 


  -- 6 - Recuperar algunos registros (where)

  if object_id('agenda') is not null
  drop table agenda;

 create table agenda (
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_columns agenda;

 insert into agenda(apellido,nombre,domicilio,telefono) values ('Acosta', 'Ana', 'Colon 123', '4234567');

 insert into agenda(apellido,nombre,domicilio,telefono) values ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');

 insert into agenda(apellido,nombre,domicilio,telefono) values ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 insert into agenda(apellido,nombre,domicilio,telefono) values ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

 select * from agenda;

 select * from agenda  where nombre='Marisa';

 select nombre,domicilio from agenda  where apellido='Lopez';

 select nombre from agenda where telefono='4545454';


 -- 7 - Operadores relacionales 

   if object_id('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

 exec sp_columns articulos;

 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

 select * from articulos where nombre='impresora';

 select * from articulos where precio>=400;

 select codigo,nombre from articulos where cantidad<30;

 select nombre, descripcion from articulos where precio<>100;

  -- 8 - Borrar registros (delete)

  if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono) values('Alvarez','Alberto','Colon 123','4234567');

 insert into agenda (apellido,nombre,domicilio,telefono) values('Juarez','Juan','Avellaneda 135','4458787');

 insert into agenda (apellido,nombre,domicilio,telefono) values('Lopez','Maria','Urquiza 333','4545454');

 insert into agenda (apellido,nombre,domicilio,telefono) values('Lopez','Jose','Urquiza 333','4545454');

 insert into agenda (apellido,nombre,domicilio,telefono) values('Salas','Susana','Gral. Paz 1234','4123456');

 delete from agenda where nombre='Juan';

 delete from agenda where telefono='4545454';

 select * from agenda;

 delete from agenda;

 select * from agenda;

 -- 9 - Actualizar registros (update)

  if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono) values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono) values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono) values ('Suarez','Susana','Gral. Paz 1234','4123456');

 select * from agenda;

 update agenda set nombre='Juan Jose' where nombre='Juan';

 select * from agenda;

 update agenda set telefono='4445566' where telefono='4545454';

 select * from agenda;

 update agenda set nombre='Juan Jose' where nombre='Juan';

 select * from agenda;


 -- 11 - Valores null (is null) 


 if object_id('medicamentos') is not null
   drop table medicamentos;

 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

 exec sp_columns medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(3,'Buscapina','Roche',null,200);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(4,'Bayaspirina','',0,150);

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(0,'','Bayer',15.60,0);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(null,'Amoxidal jarabe','Bayer',25,120);

 select * from medicamentos where laboratorio is null;

 select * from medicamentos where laboratorio='';

 select * from medicamentos where precio is null;

 select * from medicamentos where precio=0;

 select * from medicamentos where laboratorio<>'';

 select * from medicamentos where laboratorio is not null;

 select * from medicamentos where precio<>0;

 select * from medicamentos where precio is not null;


  -- 12 - Clave primaria

  if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );

  insert into libros (codigo,titulo,autor,editorial) values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial) values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial) values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

 insert into libros (codigo,titulo,autor,editorial) values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 insert into libros (codigo,titulo,autor,editorial) values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

  update libros set codigo=1  where titulo='Martin Fierro';

  -- 13 - Campo con atributo Identity

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 exec sp_columns medicamentos;

 insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(4,'Amoxilina 500','Bayer',15.60,100);

 update medicamentos set codigo=5 where nombre='Bayaspirina';

 delete from medicamentos where codigo=3;

 insert into medicamentos (nombre, laboratorio,precio,cantidad) values ('Amoxilina 500','Bayer',15.60,100);

 select * from medicamentos;


-- 14 - Otras características del atributo Identity


if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo integer identity(10,1),
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(4,'Amoxilina 500','Bayer',15.60,100);

  set identity_insert medicamentos on;

 insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxilina 500','Bayer',15.60,100);

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(10,'Amoxilina 500','Bayer',15.60,100);

 select ident_seed('medicamentos');

 select ident_incr('medicamentos');

 -- 15 - Truncate table

  if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo int identity,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30)
 );

 insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');

 delete from alumnos;

 insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');
 select * from alumnos;

 truncate table alumnos;

 insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');
 select * from alumnos;
 

 -- 17 - Tipo de dato (texto)


  if object_id('autos') is not null
  drop table autos;

 create table autos(
  patente char(6),
  marca varchar(20),
  modelo char(4),
  precio float,
  primary key (patente)
 );

 insert into autos values('ACD123','Fiat 128','1970',15000);
 insert into autos values('ACG234','Renault 11','1990',40000);
 insert into autos values('BCD333','Peugeot 505','1990',80000);
 insert into autos values('GCD123','Renault Clio','1990',70000);
 insert into autos values('BCC333','Renault Megane','1998',95000);
 insert into autos values('BVF543','Fiat 128','1975',20000);

 select * from autos
  where modelo='1990'; 

  -- 18 - Tipo de dato (numérico)


   if object_id('cuentas') is not null
  drop table cuentas;

 create table cuentas(
  numero int not null,
  documento char(8),
  nombre varchar(30),
  saldo money,
  primary key (numero)
 );

 insert into cuentas(numero,documento,nombre,saldo) values('1234','25666777','Pedro Perez',500000.60);
 insert into cuentas(numero,documento,nombre,saldo) values('2234','27888999','Juan Lopez',-250000);
 insert into cuentas(numero,documento,nombre,saldo) values('3344','27888999','Juan Lopez',4000.50);
 insert into cuentas(numero,documento,nombre,saldo) values('3346','32111222','Susana Molina',1000);

 select * from cuentas where saldo<4000;

 select numero,saldo from cuentas where nombre='Juan Lopez';

 select * from cuentas where saldo<0;

 select * from cuentas where numero>=3000;


--  19 - Tipo de dato (fecha y hora)


if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  fechanacimiento datetime
 );

 set dateformat 'dmy';

 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

 insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

 insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

 select * from alumnos where fechaingreso<'1-1-91';

 select * from alumnos where fechanacimiento is null;

 insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

 set dateformat 'mdy';

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

 -- 20 - Ingresar algunos campos (insert into) 

  if object_id('cuentas') is not null
  drop table cuentas;

 create table cuentas(
  numero int identity,
  documento char(8) not null,
  nombre varchar(30),
  saldo money
 );

 insert into cuentas values (1,'25666777','Juan Perez',2500.50);

 insert into cuentas values ('25666777','Juan Perez',2500.50);

 insert into cuentas (documento,saldo) values ('28999777',-5500);

 insert into cuentas (numero,documento,nombre,saldo) values (5,'28999777','Luis Lopez',34000);

 insert into cuentas (numero,documento,nombre) values (3344,'28999777','Luis Lopez',34000);

 insert into cuentas (nombre, saldo) values ('Luis Lopez',34000);

 select * from libros;


 -- 21 - Valores por defecto (default)


  if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 exec sp_columns visitantes;

 insert into visitantes (nombre, domicilio, montocompra) values ('Susana Molina','Colon 123',59.80);
 insert into visitantes (nombre, edad, ciudad, mail) values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
 select *from visitantes;

 insert into visitantes values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

 insert into visitantes default values;

 select * from visitantes;


  if object_id('prestamos') is not null
  drop table prestamos;

 create table prestamos(
  titulo varchar(40) not null,
  documento char(8) not null,
  fechaprestamo datetime not null,
  fechadevolucion datetime,
  devuelto char(1) default 'n'
 );

 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion) values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
 insert into prestamos (titulo,documento,fechaprestamo) values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion) values ('El aleph','22543987','2006-12-16','2006-08-19');
 insert into prestamos (titulo,documento,fechaprestamo,devuelto) values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

 select * from prestamos;

 insert into prestamos values('Manual de historia','32555666','2006-10-25',default,default);

 select * from prestamos;

 insert into prestamos default values;


 -- 22 - Columnas calculadas (operadores aritméticos y de concatenación)


 if object_id ('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo int identity,
  nombre varchar(20),
  descripcion varchar(30),
  precio smallmoney,
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into articulos (nombre, descripcion, precio,cantidad) values ('impresora','Epson Stylus C45',400.80,20);
 insert into articulos (nombre, descripcion, precio) values ('impresora','Epson Stylus C85',500);
 insert into articulos (nombre, descripcion, precio) values ('monitor','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio,cantidad) values ('teclado','ingles Biswal',100,50);

 update articulos set precio=precio+(precio*0.15);

 select * from articulos;

 select nombre+','+descripcion
  from articulos;

 update articulos set cantidad=cantidad-5
 where nombre='teclado';

 select * from articulos;

 

 -- 23 - Alias

  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio) values('El aleph','Borges','Emece',25);
 insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad) values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 select titulo, autor,editorial,precio,cantidad, precio*cantidad as 'monto total'
  from libros;

 select titulo,autor,precio, precio*0.1 as descuento, precio-(precio*0.1) as 'precio final'
  from libros
  where editorial='Emece';

 select titulo+'-'+autor as "Título y autor" from libros;


  -- 27 - Funciones para el uso de fechas y horas


   if object_id ('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30) not null,
  apellido varchar(20) not null,
  documento char(8),
  fechanacimiento datetime,
  fechaingreso datetime,
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
 insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
 insert into empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
 insert into empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
 insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

 select nombre+space(1)+upper(apellido) as nombre,
  stuff(documento,1,0,'DNI Nº ') as documento,
  stuff(sueldo,1,0,'$ ') as sueldo from empleados;

 select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

 select nombre,apellido from empleados where datename(month,fechanacimiento)='october';

 select nombre,apellido from empleados where datepart(year,fechaingreso)=2000;  


  -- 28 - Ordenar registros (order by)


  if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fecha) values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha) values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

 select * from visitas
  order by fecha desc;

 select nombre,pais,datename(month,fecha) from visitas
  order by pais,datename(month,fecha) desc;

 select nombre,mail, datename(month,fecha) mes, datename(day,fecha) dia, datename(hour,fecha) hora from visitas
  order by 3,4,5;

 select mail, pais from visitas where datename(month,fecha)='October'

  order by 2;

  -- 29 - Operadores lógicos ( and - or - not)


  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into medicamentos values('Sertal','Roche',5.2,100);
 insert into medicamentos values('Buscapina','Roche',4.10,200);
 insert into medicamentos values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos values('Amoxidal jarabe','Bayer',5.10,250); 

 select codigo,nombre from medicamentos
 where laboratorio='Roche' and
  precio<5;

 select * from medicamentos
  where laboratorio='Roche' or
  precio<5;

 select * from medicamentos
  where not laboratorio='Bayer' and
  cantidad=100;

 select * from medicamentos
  where laboratorio='Bayer' and
  not cantidad=100;

 delete from medicamentos
  where laboratorio='Bayer' and
  precio>10;

 update medicamentos set cantidad=200
  where laboratorio='Roche' and
  precio>5;

 delete from medicamentos
  where laboratorio='Bayer' or
  precio<3;


  --  30 - Otros operadores relacionales (is null)


   if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  codigo int identity,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion tinyint,
  primary key (codigo)
 );

 insert into peliculas values('Mision imposible','Tom Cruise',120);
 insert into peliculas values('Harry Potter y la piedra filosofal','Daniel R.',null);
 insert into peliculas values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas values('Mujer bonita',null,120);
 insert into peliculas values('Tootsie','D. Hoffman',90);
 insert into peliculas (titulo) values('Un oso rojo');

 select * from peliculas
  where actor is null;

 update peliculas set duracion=0
  where duracion is null;

 delete from peliculas
  where actor is null and
  duracion=0;

 select * from peliculas;


 -- 31 - Otros operadores relacionales (between)

  if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fechayhora datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fechayhora) values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fechayhora) values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fechayhora) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fechayhora) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
 insert into visitas (nombre,mail,pais) values ('Federico1','federicogarcia@xaxamail.com','Argentina');

 select * from visitas where fechayhora between '2006-09-12' and '2006-10-11';

 select * from visitas where numero between 2 and 5;

	
	if object_id('autos') is not null
  drop table autos;

 create table autos(
  patente char(6),
  marca varchar(20),
  modelo char(4),
  precio decimal(8,2),
  primary key(patente)
 );

 insert into autos values('ACD123','Fiat 128','1970',15000);
 insert into autos values('ACG234','Renault 11','1980',40000);
 insert into autos values('BCD333','Peugeot 505','1990',80000);
 insert into autos values('GCD123','Renault Clio','1995',70000);
 insert into autos values('BCC333','Renault Megane','1998',95000);
 insert into autos values('BVF543','Fiat 128','1975',20000);

 select * from autos where modelo between '1970' and '1990'
  order by modelo;

 select * from autos
  where precio between 50000 and 100000;


 -- 32 - Otros operadores relacionales (in)


   if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2015-02-01');
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2016-03-01');
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2018-02-01');
 insert into medicamentos 
  values('Bayaspirina','Bayer',2.10,150,'2019-12-01'); 
 insert into medicamentos 
  values('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

 select nombre,precio from medicamentos
  where laboratorio in ('Bayer','Bago');

 select * from medicamentos
  where cantidad between 1 and 5;

 select * from medicamentos
  where cantidad in (1,2,3,4,5);


 -- 33 - Búsqueda de patrones (like - not like)

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

 select * from empleados
  where nombre like '%Perez%';

 select * from empleados
  where domicilio like 'Co%8%';

 select * from empleados
  where documento like '%[02468]';

 select * from empleados
  where documento like '[^13]%' and
  nombre like '%ez';

 select nombre from empleados
  where nombre like '%[yj]%';

 select nombre,seccion from empleados
  where seccion like '[SG]_______';

 select nombre,seccion from empleados
  where seccion not like '[SG]%';

 select nombre,sueldo from empleados
  where sueldo not like '%.00';

 select * from empleados
  where fechaingreso like '%1990%';

  -- 34 - Contar registros (count)

   if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  numerolote int default null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2015-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2016-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

 select count(*)
  from medicamentos;

 select count(laboratorio)
   from medicamentos;

 select count(precio) as 'Con precio',
  count(cantidad) as 'Con cantidad'
  from medicamentos;

 select count(precio)
  from medicamentos
  where laboratorio like 'B%';

 select count(numerolote) from medicamentos;

 -- 35 - Contar registros (count_big)

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  numerolote int default null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2015-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2016-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

 select count_big(*)
  from medicamentos;

 select count_big(distinct laboratorio)
   from medicamentos;

 select count_big(precio) as 'Con precio',
  count_big(cantidad) as 'Con cantidad'
  from medicamentos;

 -- 36 - Funciones de agrupamiento (count - sum - min - max - avg)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null);

 select count(*)
  from empleados;

 select count(sueldo)
  from empleados
  where seccion='Secretaria';

 select max(sueldo) as 'Mayor sueldo',
  min(sueldo) as 'Menor sueldo'
  from empleados;

 select max(cantidadhijos)
  from empleados
  where nombre like '%Perez%';

 select avg(sueldo)
  from empleados;

 select avg(sueldo)
  from empleados
  where seccion='Secretaria';

 select avg(cantidadhijos)
  from empleados
  where seccion='Sistemas';


  -- 37 - Agrupar registros (group by)

   if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 insert into visitantes
  values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
 insert into visitantes
  values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
 insert into visitantes
  values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
 insert into visitantes (nombre, edad,sexo,telefono, mail)
  values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
 insert into visitantes (nombre, ciudad, montocompra)
  values ('Alejandra Gonzalez','La Falda',280.50);
 insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
  values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
 insert into visitantes
  values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
 insert into visitantes
  values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

 select ciudad, count(*)
  from visitantes
  group by ciudad;

 select ciudad, count(telefono)
  from visitantes
  group by ciudad;

 select sexo, sum(montocompra)
  from visitantes
  group by sexo;

 select sexo,ciudad,
  max(montocompra) as mayor,
  min(montocompra) as menor
  from visitantes
  group by sexo,ciudad;

 select ciudad,
  avg(montocompra) as 'promedio de compras'
  from visitantes
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by all ciudad;

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  fechaingreso datetime,
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,'1980-05-10');
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,'1980-10-12');
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,'1985-05-25');
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,'1990-06-25');
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,'1996-05-01');
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,'1996-05-01');
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,'1996-05-01');
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,'2000-09-01');
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null,null);

 select seccion, count(*)
  from empleados
  group by seccion;

  select seccion, avg(cantidadhijos) as 'promedio de hijos'
   from empleados
   group by seccion;

 select datepart(year,fechaingreso), count(*)
  from empleados
  group by datepart(year,fechaingreso);

 select seccion, avg(sueldo) as 'promedio de sueldo'
  from empleados
  where cantidadhijos>0 and
  cantidadhijos is not null
  group by seccion;

 select seccion, avg(sueldo) as 'promedio de sueldo'
  from empleados
  where cantidadhijos>0 and
  cantidadhijos is not null

 -- 38 - Seleccionar grupos (having)

  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  telefono varchar(11),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia;

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia
  having count(*)>1;

 select ciudad, count(*)
  from clientes
  where domicilio like '%San Martin%'
  group by all ciudad
  having count(*)<2 and
  ciudad <> 'Cordoba';



  if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11),
  montocompra decimal(6,2) not null
 );

 insert into visitantes
  values ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 
 insert into visitantes
  values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40);
 insert into visitantes
  values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
 insert into visitantes
  values ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120);
 insert into visitantes
  values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
 insert into visitantes
  values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95);
 insert into visitantes
  values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50);
 insert into visitantes
  values ('Roxana Lopez',20,'f','null','Alta Gracia',null,240);
 insert into visitantes
  values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
 insert into visitantes
  values ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

 select ciudad,sexo,
  sum(montocompra) as Total
  from visitantes
  group by ciudad,sexo
  having sum(montocompra)>50;

 select ciudad, sexo,
  sum(montocompra) as 'total'
  from visitantes
  where montocompra>50 and
  telefono is not null
  group by all ciudad,sexo
  having ciudad<>'Cordoba'
 order by ciudad;

 select ciudad,max(montocompra) as maximo
  from visitantes
  where domicilio is not null and
  sexo='f'
  group by all ciudad
  having max(montocompra)>50;

 select ciudad,sexo, count(*) as cantidad,
  sum(montocompra) as total,
  avg(montocompra) as promedio
  from visitantes
  group by ciudad,sexo
  having avg(montocompra)>30
  order by total;



  -- 39 - Modificador del group by (with rollup)



  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  estado varchar (20),
  pais varchar(20),
  primary key(codigo)
 );

 insert into clientes
  values ('Lopez Marcos','Colon 111', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Perez Ana','San Martin 222', 'Carlos Paz','Cordoba','Argentina');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333', 'Carlos Paz','Cordoba','Argentina');
 insert into clientes
  values ('Perez Luis','Sarmiento 444', 'Rosario','Santa Fe','Argentina');
 insert into clientes
  values ('Gomez Ines','San Martin 987', 'Santa Fe','Santa Fe','Argentina');
 insert into clientes
  values ('Gomez Ines','San Martin 666', 'Santa Fe','Santa Fe','Argentina');
 insert into clientes
  values ('Lopez Carlos','Irigoyen 888', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Ramos Betina','San Martin 999', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Fernando Salas','Mariano Osorio 1234', 'Santiago','Region metropolitana','Chile');
 insert into clientes
  values ('German Rojas','Allende 345', 'Valparaiso','Region V','Chile');
 insert into clientes
  values ('Ricardo Jara','Pablo Neruda 146', 'Santiago','Region metropolitana','Chile');
 insert into clientes
  values ('Joaquin Robles','Diego Rivera 147', 'Guadalajara','Jalisco','Mexico');

 select pais,count(*) as cantidad
  from clientes
  group by pais with rollup;

 select pais,estado,
  count(*) as cantidad
  from clientes
  group by pais,estado with rollup;

 select pais,estado,ciudad,
  count(*) as cantidad
  from clientes
  group by pais,estado,ciudad
  with rollup;



  if object_id('notas') is not null
  drop table notas;

 create table notas(
  documento char(8) not null,
  materia varchar(30),
  nota decimal(4,2)
 );

 insert into notas values ('22333444','Programacion',8);
 insert into notas values ('22333444','Programacion',9);
 insert into notas values ('22333444','Ingles',8);
 insert into notas values ('22333444','Ingles',7);
 insert into notas values ('22333444','Ingles',6);
 insert into notas values ('22333444','Sistemas de datos',10);
 insert into notas values ('22333444','Sistemas de datos',9);

 insert into notas values ('23444555','Programacion',5);
 insert into notas values ('23444555','Programacion',4);
 insert into notas values ('23444555','Programacion',3);
 insert into notas values ('23444555','Ingles',9);
 insert into notas values ('23444555','Ingles',7);
 insert into notas values ('23444555','Sistemas de datos',9);

 insert into notas values ('24555666','Programacion',1);
 insert into notas values ('24555666','Programacion',3.5);
 insert into notas values ('24555666','Ingles',4.5);
 insert into notas values ('24555666','Sistemas de datos',6);

 select documento,materia,
  avg(nota) as promedio
  from notas
  group by documento,materia with rollup;

 select documento,
  avg(nota) as promedio
  from notas
  group by documento with rollup;

 select documento,materia,
  count(nota) as cantidad
  from notas
  group by documento,materia;

 select documento,materia,
  count(nota) as cantidad
  from notas
  group by documento,materia with rollup;

 select documento,
  min(nota) as minima, max(nota)as maxima
  from notas
  group by documento with rollup;


 -- 40 - Modificador del group by (with cube)

 if object_id('ventas') is not null
  drop table ventas;

 create table ventas(
  numero int identity,
  montocompra decimal(6,2),
  tipopago char(1),--c=contado, t=tarjeta
  vendedor varchar(30),
  primary key (numero)
 );

 insert into ventas
  values(100.50,'c','Marisa Perez');
 insert into ventas
  values(200,'c','Marisa Perez');
 insert into ventas
  values(50,'t','Juan Lopez');
 insert into ventas
  values(220,'c','Juan Lopez');
 insert into ventas
  values(150,'t','Marisa Perez');
 insert into ventas
  values(550.80,'c','Marisa Perez');
 insert into ventas
  values(300,'t','Juan Lopez');
 insert into ventas
  values(25,'c','Marisa Perez');

 select vendedor,tipopago,
  count(*) as cantidad
  from ventas
  group by vendedor,tipopago
  with rollup;

 select vendedor,tipopago,
  count(*) as cantidad
  from ventas
  group by vendedor,tipopago
  with cube;

   if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  mail varchar(30) default 'no tiene',
  montocompra decimal(6,2)
 );

 insert into visitantes
  values ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 
 insert into visitantes
  values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba',default,22.40);
 insert into visitantes
  values ('Alberto Garcia',35,'m',default,'Alta Gracia','albertogarcia@hotmail.com',25); 
 insert into visitantes
  values ('Teresa Garcia',33,'f',default,'Alta Gracia',default,120);
 insert into visitantes
  values ('Roberto Perez',45,'m',null,'Cordoba','robertoperez@xaxamail.com',33.20);
 insert into visitantes
  values ('Marina Torres',22,'f',null,'Villa Dolores',default,95);
 insert into visitantes
  values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia','julietagomez@gmail.com',53.50);
 insert into visitantes
  values ('Roxana Lopez',20,'f','null','Alta Gracia',default,240);
 insert into visitantes
  values ('Liliana Garcia',50,'f','Paso 999','Cordoba',default,48);
 insert into visitantes
  values ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

 select sexo,ciudad,
  sum(montocompra) as total
  from visitantes
  group by sexo,ciudad
  with rollup;

 select sexo,ciudad,
  sum(montocompra) as total
  from visitantes
  group by sexo,ciudad
  with cube;

 select sexo,ciudad,
  avg(edad) as 'edad promedio'
  from visitantes
  where mail is not null and
  mail <>'no tiene'
  group by sexo,ciudad
  with rollup;

 select sexo,ciudad,
  avg(edad) as 'edad promedio'
  from visitantes
  where mail is not null and
  mail <>'no tiene'
  group by sexo,ciudad
  with cube;


  -- 41 - Función grouping

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  primary key (documento)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','m','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','f','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','m','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','m','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez',null,'c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres',null,'s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez','f',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia','m',null,'Administracion');

 select sexo,estadocivil,
  count(*) as cantidad
  from empleados
  group by sexo,estadocivil
  with rollup;

 select sexo,estadocivil,
  count(*) as cantidad,
  grouping(sexo) as 'resumen sexo',
  grouping(estadocivil) as 'resumen estado civil'
  from empleados
  group by sexo,estadocivil
  with rollup;

 select sexo,estadocivil,
  count(*) as cantidad,
  grouping(sexo) as 'resumen sexo',
  grouping(estadocivil) as 'resumen estado civil'
  from empleados
  group by sexo,estadocivil
  with cube;



  -- 42 - Cláusulas compute y compute by

  if object_id('inmuebles') is not null
  drop table inmuebles;

 create table inmuebles (
  documento varchar(8) not null,
  nombre varchar(30),
  domicilio varchar(20),
  barrio varchar(20),
  ciudad varchar(20),
  tipo char(1),--b=baldio, e: edificado
  superficie decimal (8,2),
  monto decimal (8,2)
 );

 insert into inmuebles
  values ('11111111','Alberto Acosta','Avellaneda 800','Centro','Cordoba','e',100,1200);
 insert into inmuebles
  values ('11111111','Alberto Acosta','Sarmiento 245','Gral. Paz','Cordoba','e',200,2500);
 insert into inmuebles
  values ('22222222','Beatriz Barrios','San Martin 202','Centro','Cordoba','e',250,1900);
 insert into inmuebles
  values ('33333333','Carlos Caseres','Paso 1234','Alberdi','Cordoba','b',200,1000);
 insert into inmuebles
  values ('33333333','Carlos Caseres','Guemes 876','Alberdi','Cordoba','b',300,1500);
 insert into inmuebles
  values ('44444444','Diana Dominguez','Calderon 456','Matienzo','Cordoba','b',200,800);
 insert into inmuebles
  values ('55555555','Estela Fuentes','San Martin 321','Flores','Carlos Paz','e',500,4500);
 insert into inmuebles
  values ('55555555','Estela Fuentes','Lopez y Planes 853','Alberdi','Cordoba','e',350,2200);

 select *from inmuebles compute avg(monto);

 select *from inmuebles
  compute avg(superficie),sum(monto);

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,barrio,ciudad;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,barrio;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,ciudad;

 select *from inmuebles
  order by documento
  compute sum(monto)
  compute avg(monto)
  by documento;


  -- 43 - Registros duplicados (distinct)


   if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

 select distinct provincia from clientes;

 select count(distinct provincia) as cantidad
  from clientes;

 select distinct ciudad from clientes;

 select count(distinct ciudad) from clientes;

 select distinct ciudad from clientes
  where provincia='Cordoba';

 select provincia,count(distinct ciudad)
  from clientes
  group by provincia;



   if object_id('inmuebles') is not null
  drop table inmuebles;

 create table inmuebles (
  documento varchar(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  domicilio varchar(20),
  barrio varchar(20),
  ciudad varchar(20),
  tipo char(1),--b=baldio, e: edificado
  superficie decimal (8,2)
 );

 insert into inmuebles
  values ('11000000','Perez','Alberto','San Martin 800','Centro','Cordoba','e',100);
 insert into inmuebles
  values ('11000000','Perez','Alberto','Sarmiento 245','Gral. Paz','Cordoba','e',200);
 insert into inmuebles
  values ('12222222','Lopez','Maria','San Martin 202','Centro','Cordoba','e',250);
 insert into inmuebles
  values ('13333333','Garcia','Carlos','Paso 1234','Alberdi','Cordoba','b',200);
 insert into inmuebles
  values ('13333333','Garcia','Carlos','Guemes 876','Alberdi','Cordoba','b',300);
 insert into inmuebles
  values ('14444444','Perez','Mariana','Caseros 456','Flores','Cordoba','b',200);
 insert into inmuebles
  values ('15555555','Lopez','Luis','San Martin 321','Centro','Carlos Paz','e',500);
 insert into inmuebles
  values ('15555555','Lopez','Luis','Lopez y Planes 853','Flores','Carlos Paz','e',350);
 insert into inmuebles
  values ('16666666','Perez','Alberto','Sucre 1877','Flores','Cordoba','e',150);

 select distinct apellido from inmuebles;

 select distinct documento from inmuebles;

 select count(distinct documento)
  from inmuebles
 where ciudad='Cordoba';

 select count(ciudad)
  from inmuebles
  where domicilio like 'San Martin %';

 select distinct apellido,nombre 
  from inmuebles;

 select documento,count(distinct barrio) as 'cantidad'
  from inmuebles
  group by documento; 

 -- 44 - Cláusula top

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia',null,'Administracion');

 select top 5 * from empleados;

 select top 4 nombre,seccion
  from empleados
  order by seccion;

 select top 4 with ties nombre,seccion
  from empleados
  order by seccion;

 select top 4 nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

 select top 4 with ties nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

  -- 45 - Clave primaria compuesta

  if object_id('consultas') is not null
  drop table consultas;

 create table consultas(
  fechayhora datetime not null,
  medico varchar(30) not null,
  documento char(8) not null,
  paciente varchar(30),
  obrasocial varchar(30),
  primary key(fechayhora,medico)
 );

 insert into consultas
  values ('2006/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
 insert into consultas
  values ('2006/11/05 8:30','Lopez','23333333','Fuentes Carlos','PAMI');

 insert into consultas
  values ('2006/11/05 8:00','Perez','34444444','Garcia Marisa','IPAM');
 insert into consultas
  values ('2006/11/05 8:00','Duarte','45555555','Pereyra Luis','PAMI');

 insert into consultas
  values ('2006/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');



  if object_id('inscriptos') is not null
  drop table inscriptos;

 create table inscriptos(
  documento char(8) not null, 
  nombre varchar(30),
  deporte varchar(15) not null,
  año datetime,
  matricula char(1),
  primary key(documento,deporte,año)
 );

 insert into inscriptos
  values ('12222222','Juan Perez','tenis','2005','s');
 insert into inscriptos
  values ('23333333','Marta Garcia','tenis','2005','s');
 insert into inscriptos
  values ('34444444','Luis Perez','tenis','2005','n');

 insert into inscriptos
  values ('12222222','Juan Perez','futbol','2005','s');
 insert into inscriptos
  values ('12222222','Juan Perez','natacion','2005','s');
 insert into inscriptos
  values ('12222222','Juan Perez','basquet','2005','n');

 insert into inscriptos
  values ('12222222','Juan Perez','tenis','2006','s');
 insert into inscriptos
  values ('12222222','Juan Perez','tenis','2007','s');

 insert into inscriptos
  values ('12222222','Juan Perez','tenis','2005','s');

 update inscriptos set deporte='tenis'
  where documento='12222222' and
  deporte='futbol' and
  año='2005';



 -- 47 - Restricción default

 if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  numero int identity,
  nombre varchar(30),
  edad tinyint,
  domicilio varchar(30),
  ciudad varchar(20),
  montocompra decimal (6,2) not null
 );

 alter table visitantes
  add constraint DF_visitantes_ciudad
  default 'Cordoba'
  for ciudad;

 alter table visitantes
  add constraint DF_visitantes_montocompra
  default 0
  for montocompra;

 insert into visitantes
  values ('Susana Molina',35,'Colon 123',default,59.80);
 insert into visitantes (nombre,edad,domicilio)
  values ('Marcos Torres',29,'Carlos Paz');
 insert into visitantes
  values ('Mariana Juarez',45,'Carlos Paz',null,23.90);

 select * from visitantes;

 exec sp_helpconstraint visitantes;

 alter table visitantes
  add constraint DF_visitantes_ciudad
  default 'Cordoba'
  for ciudad;

 alter table visitantes
  add constraint DF_visitantes_numero
  default 0
  for numero;


   if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime,
  horasalida datetime
 );

 alter table vehiculos
  add constraint DF_vehiculos_tipo
  default 'a'
  for tipo;

 insert into vehiculos values('BVB111',default,default,null);

 select * from vehiculos;

 alter table vehiculos
  add constraint DF_vehiculos_tipo2
  default 'm'
  for tipo;

 alter table vehiculos
  add constraint DF_vehiculos_horallegada
  default getdate()
  for horallegada;

 insert into vehiculos (patente,tipo) values('CAA258','a');

 select * from vehiculos;

 exec sp_helpconstraint vehiculos;




 -- 48 - Restricción check

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8),
  nombre varchar(30),
  fechanacimiento datetime,
  cantidadhijos tinyint,
  seccion varchar(20),
  sueldo decimal(6,2)
 );

 alter table empleados
   add constraint CK_empleados_sueldo_positivo
   check (sueldo>0);

 insert into empleados values ('22222222','Alberto Lopez','1965/10/05',1,'Sistemas',1000);
 insert into empleados values ('33333333','Beatriz Garcia','1972/08/15',2,'Administracion',3000);
 insert into empleados values ('34444444','Carlos Caseres','1980/10/05',0,'Contaduría',6000);

 alter table empleados
   add constraint CK_empleados_sueldo_maximo
   check (sueldo<=5000);

 delete from empleados where sueldo=6000;

 alter table empleados
   add constraint CK_empleados_sueldo_maximo
   check (sueldo<=5000); 

 alter table empleados
   add constraint CK_fechanacimiento_actual
   check (fechanacimiento<getdate());

 alter table empleados
   add constraint CK_empleados_seccion_lista
   check (seccion in ('Sistemas','Administracion','Contaduria'));

 alter table empleados
   add constraint CK_cantidadhijos_valores
   check (cantidadhijos between 0 and 15);

 exec sp_helpconstraint empleados;

 insert into empleados
  values ('24444444','Carlos Fuentes','1980/02/05',2,'Administracion',-1500);

 insert into empleados
  values ('25555555','Daniel Garcia','2007/05/05',2,'Sistemas',1550);

 update empleados set cantidadhijos=21 where documento='22222222';

 update empleados set seccion='Recursos' where documento='22222222';

 alter table empleados
   add constraint CK_seccion_letrainicial
   check (seccion like '%B');



 --  49 - Deshabilitar restricciones (with check - nocheck)


  if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8),
  nombre varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2)
 );

 insert into empleados
  values ('22222222','Alberto Acosta','Sistemas',-10);
 insert into empleados
  values ('33333333','Beatriz Benitez','Recursos',3000);
 insert into empleados
  values ('34444444','Carlos Caseres','Contaduria',4000);

 alter table empleados
 add constraint CK_empleados_sueldo_positivo
 check (sueldo>=0);

 alter table empleados
 with nocheck
 add constraint CK_empleados_sueldo_positivo
 check (sueldo>=0);

 insert into empleados
  values ('35555555','Daniel Duarte','Administracion',-2000);

 alter table empleados
  nocheck constraint CK_empleados_sueldo_positivo;
 insert into empleados
  values ('35555555','Daniel Duarte','Administracion',2000);

 alter table empleados
 add constraint CK_empleados_seccion_lista
 check (seccion in ('Sistemas','Administracion','Contaduria'));

 alter table empleados
 with nocheck
 add constraint CK_empleados_seccion_lista
 check (seccion in ('Sistemas','Administracion','Contaduria'));

 exec sp_helpconstraint empleados;

 alter table empleados
  check constraint CK_empleados_sueldo_positivo;

 update empleados set seccion='Recursos' where nombre='Carlos Caseres';

 alter table empleados
  nocheck constraint CK_empleados_seccion_lista;
 update empleados set seccion='Recursos' where nombre='Carlos Caseres';


 -- 50 - Restricción primary key

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','Administracion');
 insert into empleados
  values ('23333333','Carlos Fuentes','Administracion');

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);
 delete from empleados
  where nombre='Carlos Fuentes';

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);

 update empleados set documento='22222222'
  where documento='23333333';

 alter table empleados
 add constraint PK_empleados_nombre
 primary key(nombre);

 insert into empleados values(null,'Marcelo Juarez','Sistemas');

 alter table empleados
  add constraint DF_empleados_documento
  default '00000000'
  for documento;

 insert into empleados (nombre,seccion) values('Luis Luque','Sistemas'); 

 select * from empleados;

 insert into empleados (nombre,seccion) values('Ana Fuentes','Sistemas'); 

 exec sp_helpconstraint empleados;



  if object_id('remis') is not null
  drop table remis;

 create table remis(
  numero tinyint identity,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );

 insert into remis values('ABC123','Renault 12','1990');
 insert into remis values('DEF456','Fiat Duna','1995');

 alter table remis
 add constraint PK_remis_patente
 primary key(patente);

 alter table remis
 add constraint PK_remis_numero
 primary key(numero);

 exec sp_helpconstraint remis;




 -- 51 - Restricción unique

  if object_id('remis') is not null
  drop table remis;

 create table remis(
  numero tinyint identity,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );

 insert into remis values('ABC123','Renault clio','1990');
 insert into remis values('DEF456','Peugeot 504','1995');
 insert into remis values('DEF456','Fiat Duna','1998');
 insert into remis values('GHI789','Fiat Duna','1995');
 insert into remis values(null,'Fiat Duna','1995');

 alter table remis
 add constraint UQ_remis_patente
 unique(patente); 

 delete from remis where numero=3;
 alter table remis
 add constraint UQ_remis_patente
 unique(patente); 

 insert into remis values('ABC123','Renault 11','1995');

 insert into remis values(null,'Renault 11','1995');

 exec sp_helpconstraint remis;



 -- 53 - Eliminar restricciones (alter table - drop)


  if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 alter table vehiculos
 add constraint CK_vehiculos_tipo
 check (tipo in ('a','m'));

 alter table vehiculos
  add constraint DF_vehiculos_tipo
  default 'a'
  for tipo;

 alter table vehiculos
  add constraint CK_vehiculos_patente_patron
  check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

 alter table vehiculos
  add constraint PK_vehiculos_patentellegada
  primary key(patente,horallegada);

 insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2005/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2005/10/10 12:10',null);

 insert into vehiculos values('SDR111','m','2005/10/10 10:10',null);

 exec sp_helpconstraint vehiculos;

 alter table vehiculos
  drop DF_vehiculos_tipo;

 exec sp_helpconstraint vehiculos;

 alter table vehiculos
  drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

 exec sp_helpconstraint vehiculos;



 -- 54 - Crear y asociar reglas (create rule - sp_bindrule)


  if object_id('vehiculos') is not null
  drop table vehiculos;

 if object_id ('RG_patente_patron') is not null
   drop rule RG_patente_patron;
 if object_id ('RG_horallegada') is not null
   drop rule RG_horallegada;
 if object_id ('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
 if object_id ('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;
 if object_id ('RG_menor_fechaactual') is not null
   drop rule RG_menor_fechaactual;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 insert into vehiculos values ('AAA111','a','1990-02-01 08:10',null);
 insert into vehiculos values ('BCD222','m','1990-02-01 08:10','1990-02-01 10:10');
 insert into vehiculos values ('BCD222','m','1990-02-01 12:00',null);
 insert into vehiculos values ('CC1234','a','1990-02-01 12:00',null);

 create rule RG_patente_patron
 as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

 exec sp_help;

 exec sp_helpconstraint vehiculos;

 exec sp_bindrule RG_patente_patron,'vehiculos.patente';

 select * from empleados;

 insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

 create rule RG_vehiculos_tipo
 as @tipo in ('a','m');

 exec sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_vehiculos_tipo2
 as @tipo in ('a','c','m');

 exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_menor_fechaactual
 as @fecha <= getdate();

 exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horallegada';
 exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horasalida';

 insert into vehiculos values ('NOP555','a','1990-02-01 10:10','1990-02-01 08:30');

 alter table vehiculos
 add constraint CK_vehiculos_llegada_salida
 check(horallegada<=horasalida);

 delete from vehiculos where patente='NOP555';

 alter table vehiculos
 add constraint CK_vehiculos_llegada_salida
 check(horallegada<=horasalida);

 alter table vehiculos
 add constraint DF_vehiculos_tipo
 default 'b'
 for tipo;

 insert into vehiculos values ('STU456',default,'1990-02-01 10:10','1990-02-01 15:30');

 exec sp_helpconstraint vehiculos;

 -- 55 - Eliminar y dasasociar reglas (sp_unbindrule - drop rule)


  if object_id('vehiculos') is not null
  drop table vehiculos;

 if object_id ('RG_patente_patron') is not null
   drop rule RG_patente_patron;
 if object_id ('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
 if object_id ('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 create rule RG_patente_patron
 as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

 exec sp_bindrule RG_patente_patron,'vehiculos.patente';

 insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

 create rule RG_vehiculos_tipo
 as @tipo in ('a','m');

 exec sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

 insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

 create rule RG_vehiculos_tipo2
 as @tipo in ('a','c','m');

 exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

 insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

 drop rule RG_vehiculos_tipo2;

 drop rule RG_vehiculos_tipo;

 drop rule RG_patente_patron;

 exec sp_unbindrule 'vehiculos.patente';

 exec sp_helpconstraint vehiculos;

 exec sp_help;

 drop rule RG_patente_patron;

 exec sp_help;


 -- 57 - Valores predeterminados (create default)

 if object_id ('clientes') is not null
  drop table clientes;

 if object_id ('VP_legajo_patron') is not null
   drop default VP_legajo_patron;
 if object_id ('RG_legajo_patron') is not null
   drop rule RG_legajo_patron;
 if object_id ('RG_legajo') is not null
   drop rule RG_legajo;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;
 if object_id ('VP_fechaactual') is not null
   drop default VP_fechaactual;

 create table clientes(
  legajo char(4),
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(15),
  provincia varchar(20) default 'Cordoba',
  fechaingreso datetime
 );

 create rule RG_legajo_patron
 as @valor like '[A-Z][A-Z][0-9][0-9]';

 exec sp_bindrule RG_legajo_patron,'clientes.legajo';

 create default VP_legajo_patron
  as 'AA00';

 exec sp_bindefault VP_legajo_patron,'clientes.legajo';

 create default VP_datodesconocido
  as '??';

 exec sp_bindefault VP_datodesconocido,'clientes.domicilio';

 exec sp_bindefault VP_datodesconocido,'clientes.ciudad';

 insert into clientes values('GF12','Ana Perez',default,default,'Cordoba','2001-10-10');
 select * from clientes;

 exec sp_bindefault VP_datodesconocido,'clientes.provincia';

 create default VP_fechaactual
  as getdate();

 exec sp_bindefault VP_fechaactual,'clientes.fechaingreso';

 insert into clientes default values;
 select * from clientes;

 exec sp_bindefault VP_datodesconocido,'clientes.fechaingreso';

 insert into clientes default values;

 create rule RG_legajo
  as @valor like 'B%';

 exec sp_bindrule RG_legajo,'clientes.legajo';

 insert into clientes values (default,'Luis Garcia','Colon 876','Cordoba','Cordoba','2001-10-10');


 -- 58 - Desasociar y eliminar valores predeterminados


 if object_id ('libros') is not null
  drop table libros;

 if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_desconocido') is not null
   drop default VP_desconocido;
 if object_id ('RG_positivo') is not null
   drop rule RG_positivo;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  cantidad smallint
 );

 create rule RG_positivo
 as @valor >=0;

 exec sp_bindrule RG_positivo,'libros.precio';

 exec sp_bindrule RG_positivo,'libros.cantidad';

 create default VP_cero
  as 0;

 exec sp_bindefault VP_cero,'libros.precio';

 exec sp_bindefault VP_cero,'libros.cantidad';

 create default VP_desconocido
  as 'Desconocido';

 exec sp_bindefault VP_desconocido,'libros.autor';

 exec sp_bindefault VP_desconocido,'libros.editorial';

 exec sp_help;

 exec sp_helpconstraint libros;

 insert into libros (titulo) values('Aprenda PHP');
 select * from libros;

 exec sp_unbindefault 'libros.precio';

 insert into libros (titulo) values('Matematica estas ahi');
 select * from libros;

 exec sp_helpconstraint libros;

 exec sp_help VP_cero;

 drop default VP_cero;

 exec sp_unbindefault 'libros.cantidad';

 exec sp_helpconstraint libros;

 exec sp_help VP_cero;

 drop default VP_cero;

 exec sp_help VP_cero;



--  62 - Creación de índices

if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 insert into alumnos values ('A123','22222222','Perez','Patricia',5.50);
 insert into alumnos values ('A234','23333333','Lopez','Ana',9);
 insert into alumnos values ('A345','24444444','Garcia','Carlos',8.5);
 insert into alumnos values ('A348','25555555','Perez','Daniela',7.85);
 insert into alumnos values ('A457','26666666','Perez','Fabian',3.2);
 insert into alumnos values ('A589','27777777','Gomez','Gaston',6.90);

 create unique clustered index I_alumnos_apellido
 on alumnos(apellido);

 create clustered index I_alumnos_apellido
 on alumnos(apellido); 

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key clustered (legajo);

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key nonclustered (legajo);

 exec sp_helpindex alumnos;

 exec sp_helpconstraint alumnos;

 create unique nonclustered index I_alumnos_documento
 on alumnos(documento);

 insert into alumnos values ('A789','27777777','Morales','Hector',8);

 exec sp_helpindex alumnos;

 create index I_alumnos_apellidonombre
  on alumnos(apellido,nombre);

 select name from sysindexes
  where name like '%alumnos%';

 alter table alumnos
  add constraint UQ_alumnos_documento
  unique (documento);

 exec sp_helpconstraint alumnos;

 exec sp_helpindex alumnos;

 select name from sysindexes
  where name like '%alumnos%';

 select name from sysindexes
  where name like 'I_%';

 -- 63 - Regenerar índices

 if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido); 

 exec sp_helpindex alumnos;

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido,nombre)
  with drop_existing;

 exec sp_helpindex alumnos;

 alter table alumnos
  add constraint UQ_alumnos_documento
  unique nonclustered (documento);

 exec sp_helpindex alumnos;

 create clustered index UQ_alumnos_documento
  on alumnos(documento)
  with drop_existing;

 create nonclustered index I_alumnos_legajo
  on alumnos(legajo); 

 exec sp_helpindex alumnos;

 create clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;

 create nonclustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido)
  with drop_existing;

 create clustered index I_alumnos_apellido
  on alumnos(apellido)
  with drop_existing;

 create unique clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;

 create clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;


 -- 64 - Eliminar índices


 if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido);

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key clustered (legajo);

 exec sp_helpindex alumnos;

 drop index PK_alumnos_legajo;

 drop index I_alumnos_apellido;

 drop index alumnos.I_alumnos_apellido;

 exec sp_helpindex alumnos;

 if exists (select name from sysindexes
  where name = 'I_alumnos_apellido')
   drop index alumnos.I_alumnos_apellido;

 alter table alumnos
  drop PK_alumnos_legajo;

 exec sp_helpindex alumnos;


 -- 66 - Combinación interna (inner join)

 if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo;

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  order by p.nombre;

 select c.nombre,domicilio,ciudad
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  where p.nombre='Santa Fe';


if (object_id('inscriptos')) is not null
  drop table inscriptos;
 if (object_id('inasistencias')) is not null
  drop table inasistencias;

 create table inscriptos(
  nombre varchar(30),
  documento char(8),
  deporte varchar(15),
  matricula char(1), --'s'=paga 'n'=impaga
  primary key(documento,deporte)
 );

 create table inasistencias(
  documento char(8),
  deporte varchar(15),
  fecha datetime
 );

 insert into inscriptos values('Juan Perez','22222222','tenis','s');
 insert into inscriptos values('Maria Lopez','23333333','tenis','s');
 insert into inscriptos values('Agustin Juarez','24444444','tenis','n');
 insert into inscriptos values('Marta Garcia','25555555','natacion','s');
 insert into inscriptos values('Juan Perez','22222222','natacion','s');
 insert into inscriptos values('Maria Lopez','23333333','natacion','n');

 insert into inasistencias values('22222222','tenis','2006-12-01');
 insert into inasistencias values('22222222','tenis','2006-12-08');
 insert into inasistencias values('23333333','tenis','2006-12-01');
 insert into inasistencias values('24444444','tenis','2006-12-08');
 insert into inasistencias values('22222222','natacion','2006-12-02');
 insert into inasistencias values('23333333','natacion','2006-12-02');

 select nombre,insc.deporte,ina.fecha
  from inscriptos as insc
  join inasistencias as ina
  on insc.documento=ina.documento and
  insc.deporte=ina.deporte
  order by nombre, insc.deporte;

 select nombre,insc.deporte, ina.fecha
  from inscriptos as insc
  join inasistencias as ina
  on insc.documento=ina.documento and
  insc.deporte=ina.deporte
  where insc.documento='22222222';

 select nombre,insc.deporte, ina.fecha
  from inscriptos as insc
  join inasistencias as ina
  on insc.documento=ina.documento and
  insc.deporte=ina.deporte
  where insc.matricula='s';


-- 67 - Combinación externa izquierda (left join)

 if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by c.nombre;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.nombre='Cordoba';


 -- 68 - Combinación externa derecha (right join)

  if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by ciudad;




 -- 69 - Combinación externa completa (full join)

 if (object_id('deportes')) is not null
  drop table deportes;
 if (object_id('inscriptos')) is not null
  drop table inscriptos;

 create table deportes(
  codigo tinyint identity,
  nombre varchar(30),
  profesor varchar(30),
  primary key (codigo)
 );
 create table inscriptos(
  documento char(8),
  codigodeporte tinyint not null,
  matricula char(1) --'s'=paga 'n'=impaga
 );

 insert into deportes values('tenis','Marcelo Roca');
 insert into deportes values('natacion','Marta Torres');
 insert into deportes values('basquet','Luis Garcia');
 insert into deportes values('futbol','Marcelo Roca');
 
 insert into inscriptos values('22222222',3,'s');
 insert into inscriptos values('23333333',3,'s');
 insert into inscriptos values('24444444',3,'n');
 insert into inscriptos values('22222222',2,'s');
 insert into inscriptos values('23333333',2,'s');
 insert into inscriptos values('22222222',4,'n'); 
 insert into inscriptos values('22222222',5,'n'); 

 select documento,d.nombre,matricula
  from inscriptos as i
  join deportes as d
  on codigodeporte=codigo;

 select documento,d.nombre,matricula
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo;

 select documento,d.nombre,matricula
  from deportes as d
  right join inscriptos as i
  on codigodeporte=codigo;

 select nombre
  from deportes as d
  left join inscriptos as i
  on codigodeporte=codigo
  where codigodeporte is null;

 select documento
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo
  where codigo is null;

 select documento,nombre,profesor,matricula
  from inscriptos as i
  full join deportes as d
  on codigodeporte=codigo; 



 -- 70 - Combinaciones cruzadas (cross join)



  if object_id('mujeres') is not null
  drop table mujeres;
 if object_id('varones') is not null
  drop table varones;


 create table mujeres(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );
 create table varones(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );

 insert into mujeres values('Maria Lopez','Colon 123',45);
 insert into mujeres values('Liliana Garcia','Sucre 456',35);
 insert into mujeres values('Susana Lopez','Avellaneda 98',41);

 insert into varones values('Juan Torres','Sarmiento 755',44);
 insert into varones values('Marcelo Oliva','San Martin 874',56);
 insert into varones values('Federico Pereyra','Colon 234',38);
 insert into varones values('Juan Garcia','Peru 333',50);

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v;

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad>40 and
  v.edad>40;

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad-v.edad between -10 and 10;



 -- 71 - Autocombinación

  if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  nombre varchar(30),
  sexo char(1),--'f'=femenino, 'm'=masculino
  edad int,
  domicilio varchar(30)
 );

 insert into clientes values('Maria Lopez','f',45,'Colon 123');
 insert into clientes values('Liliana Garcia','f',35,'Sucre 456');
 insert into clientes values('Susana Lopez','f',41,'Avellaneda 98');
 insert into clientes values('Juan Torres','m',44,'Sarmiento 755');
 insert into clientes values('Marcelo Oliva','m',56,'San Martin 874');
 insert into clientes values('Federico Pereyra','m',38,'Colon 234');
 insert into clientes values('Juan Garcia','m',50,'Peru 333');

 select cm.nombre,cm.edad,cv.nombre,cv.edad
  from clientes as cm
  cross join clientes cv
  where cm.sexo='f' and cv.sexo='m';

 select cm.nombre,cm.edad,cv.nombre,cv.edad
  from clientes as cm
  join clientes cv
  on cm.nombre<>cv.nombre
  where cm.sexo='f' and cv.sexo='m';

 select cm.nombre,cm.edad,cv.nombre,cv.edad
  from clientes as cm
  cross join clientes cv
  where cm.sexo='f' and cv.sexo='m' and
  cm.edad-cv.edad between -5 and 5;



   if object_id('equipos') is not null
  drop table equipos;

 create table equipos(
  nombre varchar(30),
  barrio varchar(20),
  domicilio varchar(30),
  entrenador varchar(30)
 );

 insert into equipos values('Los tigres','Gral. Paz','Sarmiento 234','Juan Lopez');
 insert into equipos values('Los leones','Centro','Colon 123','Gustavo Fuentes');
 insert into equipos values('Campeones','Pueyrredon','Guemes 346','Carlos Moreno');
 insert into equipos values('Cebollitas','Alberdi','Colon 1234','Luis Duarte');

 select e1.nombre,e2.nombre,e1.barrio as 'sede'
  from equipos as e1
  cross join equipos as e2
  where e1.nombre<>e2.nombre;

 select e1.nombre,e2.nombre,e1.barrio as 'sede'
  from equipos as e1
  join equipos as e2
  on e1.nombre<>e2.nombre;

 select e1.nombre,e2.nombre,e1.barrio as 'sede'
  from equipos as e1
  cross join equipos as e2
  where e1.nombre>e2.nombre;


 -- 72 - Combinaciones y funciones de agrupamiento


  if object_id('visitantes') is not null
  drop table visitantes;
 if object_id('ciudades') is not null
  drop table ciudades;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  codigociudad tinyint not null,
  mail varchar(30),
  montocompra decimal (6,2)
 );

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20)
 );
 
 insert into ciudades values('Cordoba');
 insert into ciudades values('Carlos Paz');
 insert into ciudades values('La Falda');
 insert into ciudades values('Cruz del Eje');

 insert into visitantes values 
   ('Susana Molina', 35,'f','Colon 123', 1, null,59.80);
 insert into visitantes values 
   ('Marcos Torres', 29,'m','Sucre 56', 1, 'marcostorres@hotmail.com',150.50);
 insert into visitantes values 
   ('Mariana Juarez', 45,'f','San Martin 111',2,null,23.90);
 insert into visitantes values 
   ('Fabian Perez',36,'m','Avellaneda 213',3,'fabianperez@xaxamail.com',0);
 insert into visitantes values 
   ('Alejandra Garcia',28,'f',null,2,null,280.50);
 insert into visitantes values 
   ('Gaston Perez',29,'m',null,5,'gastonperez1@gmail.com',95.40);
 insert into visitantes values 
   ('Mariana Juarez',33,'f',null,2,null,90);

 select c.nombre,
  count(*) as cantidad
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre;

 select c.nombre,sexo,
  avg(montocompra) as 'promedio de compra'
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre,sexo;

 select c.nombre,
  count(mail) as 'tienen mail'
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre;

 select c.nombre,
  max(montocompra)
  from visitantes as v
  join ciudades as c
  on codigociudad=c.codigo
  group by c.nombre;


 -- 73 - Combinación de más de dos tablas

  if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('inscriptos') is not null
  drop table inscriptos;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 insert into inscriptos values ('26666666',0,'2006','s');

 select s.nombre,d.nombre,anio
  from deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  where s.documento='22222222';


 -- 73 - Combinación de más de dos tablas

 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('inscriptos') is not null
  drop table inscriptos;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 insert into inscriptos values ('26666666',0,'2006','s');

 select s.nombre,d.nombre,anio
  from deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  where s.documento='22222222';


--  76 - Restricciones (foreign key)

if object_id('provincias') is not null
  drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint
 );

 create table provincias(
  codigo tinyint not null,
  nombre varchar(20)
 );

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

 alter table provincias
 add constraint PK_provincias_codigo
  primary key (codigo);

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Acosta Ana','Avellaneda 333','Posadas',3);
 insert into clientes values('Luisa Lopez','Juarez 555','La Plata',6);

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

 delete from clientes where codigoprovincia=6;
 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

 insert into clientes values('Garcia Marcos','Colon 877','Lules',9);

 delete from provincias where codigo=3;

 delete from provincias where codigo=4;

 update provincias set codigo=7 where codigo=1;

 exec sp_helpconstraint clientes;

 exec sp_helpconstraint provincias;



--77 - Restricciones foreign key en la misma tabla

if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  codigo int not null,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  referenciadopor int,
  primary key(codigo)
 );

 insert into clientes values (50,'Juan Perez','Sucre 123','Cordoba',null);
 insert into clientes values(90,'Marta Juarez','Colon 345','Carlos Paz',null);
 insert into clientes values(110,'Fabian Torres','San Martin 987','Cordoba',50);
 insert into clientes values(125,'Susana Garcia','Colon 122','Carlos Paz',90);
 insert into clientes values(140,'Ana Herrero','Colon 890','Carlos Paz',9);

 alter table clientes
  add constraint FK_clientes_referenciadopor
  foreign key (referenciadopor)
  references clientes (codigo);

 update clientes set referenciadopor=90 where referenciadopor=9;

 alter table clientes
  add constraint FK_clientes_referenciadopor
  foreign key (referenciadopor)
  references clientes (codigo);

 exec sp_helpconstraint clientes;

 insert into clientes values(150,'Karina Gomez','Caseros 444','Cruz del Eje',8);

 update clientes set codigo=180 where codigo=90;

 delete from clientes where nombre='Marta Juarez';

 update clientes set codigo=180 where codigo=125;

 delete from clientes where codigo=110;


-- 78 - Restricciones foreign key (acciones)

if object_id('clientes') is not null
  drop table clientes;
 if object_id('provincias') is not null
  drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Acosta Ana','Avellaneda 333','Posadas',3);

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade
  on delete no action;

 delete from provincias where codigo=3;

 update provincias set codigo=9 where codigo=3;

 if object_id('inscripciones') is not null
  drop table inscripciones;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('socios') is not null
  drop table socios;

 create table deportes(
  codigo tinyint,
  nombre varchar(20),
  primary key(codigo)
 );

 create table socios(
  documento char(8),
  nombre varchar(30),
  primary key(documento)
 );

 create table inscripciones(
  documento char(8), 
  codigodeporte tinyint,
  matricula char(1),-- 's' si está paga, 'n' si no está paga
  primary key(documento,codigodeporte)
 );

 alter table inscripciones
  add constraint FK_inscripciones_codigodeporte
  foreign key (codigodeporte)
  references deportes(codigo)
  on update cascade;

 alter table inscripciones
  add constraint FK_inscripciones_documento
  foreign key (documento)
  references socios(documento)
  on delete cascade;

 insert into deportes values(1,'basquet');
 insert into deportes values(2,'futbol');
 insert into deportes values(3,'natacion');
 insert into deportes values(4,'tenis');

 insert into socios values('30000111','Juan Lopez');
 insert into socios values('31111222','Ana Garcia');
 insert into socios values('32222333','Mario Molina');
 insert into socios values('33333444','Julieta Herrero');

 insert into inscripciones values ('30000111',1,'s');
 insert into inscripciones values ('30000111',2,'s');
 insert into inscripciones values ('31111222',1,'s');
 insert into inscripciones values ('32222333',3,'n');

 insert into inscripciones values('30000111',6,'s');

 insert into inscripciones values('40111222',1,'s');

 delete from deportes where nombre='tenis';

 delete from deportes where nombre='natacion';

 update deportes set codigo=5 where nombre='natacion';

 select * from deportes;
 select * from inscripciones;

 delete from socios where documento='32222333'; 

 select * from socios;
 select * from inscripciones;

 update socios set documento='35555555' where documento='30000111';

 drop table deportes;

 exec sp_helpconstraint socios;

 exec sp_helpconstraint deportes;

 exec sp_helpconstraint inscripciones;


-- 79 - Restricciones foreign key deshabilitar y eliminar (with check - nocheck)

  if object_id('clientes') is not null
  drop table clientes;
  if object_id('provincias') is not null
  drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Garcia Juan','Sucre 345','Cordoba',1);
 insert into clientes values('Lopez Susana','Caseros 998','Posadas',3);
 insert into clientes values('Marcelo Moreno','Peru 876','Viedma',4);
 insert into clientes values('Lopez Sergio','Avellaneda 333','La Plata',5);

 alter table clientes
  add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade
  on delete cascade;

 alter table clientes
  with nocheck
  add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade
  on delete cascade;

 exec sp_helpconstraint clientes;

 exec sp_helpconstraint provincias;

 alter table clientes
  nocheck constraint FK_clientes_codigoprovincia;

 exec sp_helpconstraint clientes;

 exec sp_helpconstraint provincias;

 insert into clientes values('Garcia Omar','San Martin 100','La Pampa',6);

 delete from provincias where codigo=2;

 select * from clientes;
 select * from provincias;

 update provincias set codigo=9 where codigo=3;

 select * from clientes;
 select * from provincias;

 drop table provincias;

 alter table clientes
  check constraint FK_clientes_codigoprovincia;

 insert into clientes values('Hector Ludueña','Paso 123','La Plata',8);

 update provincias set codigo=20 where codigo=4;

 select * from clientes;
 select * from provincias;

 delete from provincias where codigo=1;

 select * from clientes;
 select * from provincias;

 alter table clientes
  drop constraint FK_clientes_codigoprovincia;

 exec sp_helpconstraint provincias;

 drop table provincias;
 

 -- 81 - Restricciones al crear la tabla

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('profesores') is not null
  drop table profesores;
 if object_id('deportes') is not null
  drop table deportes;


 create table profesores(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  constraint CK_profesores_documento_patron check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  constraint PK_profesores_documento
   primary key (documento)
 );

 create table deportes(
  codigo tinyint identity,
  nombre varchar(20) not null,
  dia varchar(30)
   constraint DF_deportes_dia default('sabado'),
  profesor char(8),--documento del profesor
  constraint CK_deportes_dia_lista check (dia in ('lunes','martes','miercoles','jueves','viernes','sabado')),
  constraint PK_deportes_codigo
   primary key (codigo)
 );

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  constraint CK_documento_patron check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  constraint PK_socios_numero
   primary key nonclustered(numero),
  constraint UQ_socios_documento
   unique clustered(documento)
 );

 create table inscriptos(
  numerosocio int not null,
  codigodeporte tinyint,
  matricula char(1),
  constraint PK_inscriptos_numerodeporte
   primary key clustered (numerosocio,codigodeporte),
  constraint FK_inscriptos_deporte
   foreign key (codigodeporte)
   references deportes(codigo)
   on update cascade,
  constraint FK_inscriptos_socios
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
  constraint CK_matricula_valores check (matricula in ('s','n'))
 );

 insert into profesores values('21111111','Andres Acosta','Avellaneda 111');
 insert into profesores values('22222222','Betina Bustos','Bulnes 222');
 insert into profesores values('23333333','Carlos Caseros','Colon 333');

 insert into deportes values('basquet','lunes',null);
 insert into deportes values('futbol','lunes','23333333');
 insert into deportes values('natacion',null,'22222222');
 insert into deportes values('padle',default,'23333333');
 insert into deportes (nombre,dia) values('tenis','jueves');

 insert into socios values('30111111','Ana Acosta','America 111');
 insert into socios values('30222222','Bernardo Bueno','Bolivia 222');
 insert into socios values('30333333','Camila Conte','Caseros 333');
 insert into socios values('30444444','Daniel Duarte','Dinamarca 444');

 insert into inscriptos values(1,3,'s');
 insert into inscriptos values(1,5,'s');
 insert into inscriptos values(2,1,'s');
 insert into inscriptos values(4,1,'n');
 insert into inscriptos values(4,4,'s');

 select s.*,d.nombre as deporte,d.dia,p.nombre as profesor
  from socios as s
  join inscriptos as i
  on numero=i.numerosocio
  join deportes as d
  on d.codigo=i.codigodeporte
  left join profesores as p
  on d.profesor=p.documento;

 select s.*,d.nombre as deporte,d.dia,p.nombre as profesor
  from socios as s
  full join inscriptos as i
  on numero=i.numerosocio
  left join deportes as d
  on d.codigo=i.codigodeporte
  left join profesores as p
  on d.profesor=p.documento;

 select p.*,d.nombre as deporte,d.dia
  from profesores as p
  left join deportes as d
  on d.profesor=p.documento;

 select d.nombre,count(i.codigodeporte) as cantidad
  from deportes as d
  left join inscriptos as i
  on d.codigo=i.codigodeporte
  group by d.nombre;  

 exec sp_helpconstraint socios;

 exec sp_helpconstraint deportes;

 exec sp_helpconstraint profesores;

 exec sp_helpconstraint inscriptos;

 -- 82 - Unión

  if object_id('clientes') is not null
  drop table clientes;
  if object_id('proveedores') is not null
  drop table proveedores;
  if object_id('empleados') is not null
  drop table empleados;

 create table proveedores(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table clientes(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table empleados(
  documento char(8) not null,
  nombre varchar(20),
  apellido varchar(20),
  domicilio varchar(30),
  primary key(documento)
 );

 insert into proveedores values('Bebida cola','Colon 123');
 insert into proveedores values('Carnes Unica','Caseros 222');
 insert into proveedores values('Lacteos Blanca','San Martin 987');
 insert into clientes values('Supermercado Lopez','Avellaneda 34');
 insert into clientes values('Almacen Anita','Colon 987');
 insert into clientes values('Garcia Juan','Sucre 345');
 insert into empleados values('23333333','Federico','Lopez','Colon 987');
 insert into empleados values('28888888','Ana','Marquez','Sucre 333');
 insert into empleados values('30111111','Luis','Perez','Caseros 956');

 select nombre, domicilio from proveedores
  union
  select nombre, domicilio from clientes
   union
   select (apellido+' '+nombre), domicilio from empleados;

 select nombre, domicilio, 'proveedor' as categoria from proveedores
  union
  select nombre, domicilio, 'cliente' from clientes
   union
   select (apellido+' '+nombre), domicilio , 'empleado' from empleados
  order by categoria;


  --83 - Agregar y eliminar campos ( alter table - add - drop)

   if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  fechaingreso datetime
 );
 insert into empleados(apellido,nombre) values ('Rodriguez','Pablo');

 alter table empleados
  add sueldo decimal(5,2);

 exec sp_columns empleados;

 alter table empleados
  add codigo int identity;

 alter table empleados
  add documento char(8) not null;

 alter table empleados
  add documento char(8) not null default '00000000';

 exec sp_columns empleados;

 alter table empleados
  drop column sueldo;

 exec sp_columns empleados;

 alter table empleados
  drop column documento;

 alter table empleados
  drop column codigo,fechaingreso;

 exec sp_columns empleados;


 -- 84 - Alterar campos (alter table - alter)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  legajo int not null,
  documento char(7) not null,
  nombre varchar(10),
  domicilio varchar(30),
  ciudad varchar(20) default 'Buenos Aires',
  sueldo decimal(6,2),
  cantidadhijos tinyint default 0,
  primary key(legajo)
 );

 alter table empleados
  alter column nombre varchar(30);

 sp_columns empleados;

  alter table empleados
  alter column sueldo decimal(6,2) not null;

  alter table empleados
  alter column documento char(8) not null;

  alter table empleados
  alter column legajo tinyint not null;

 insert into empleados values(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3);
 insert into empleados values(2,'30000000',null,'Sucre 456','Cordoba',600,2);

 alter table empleados
  alter column nombre varchar(30) not null;

 delete from empleados where nombre is null;
 alter table empleados
  alter column nombre varchar(30) not null;

 alter table empleados
  alter column ciudad varchar(10);

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column ciudad varchar(15);

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column legajo int identity;


 -- 85 - Agregar campos y restricciones (alter table)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(10),
  domicilio varchar(30),
  ciudad varchar(20) default 'Buenos Aires'
 );

 alter table empleados
  add legajo int identity
  constraint PK_empleados_legajo primary key;

 exec sp_columns empleados;
 exec sp_helpconstraint empleados;

 alter table empleados
  add hijos tinyint
  constraint CK_empleados_hijos check (hijos<=30);

 insert into empleados values('22222222','Juan Lopez','Colon 123','Cordoba',2);
 insert into empleados values('23333333','Ana Garcia','Sucre 435','Cordoba',3);

 alter table empleados
  add sueldo decimal(6,2) not null
  constraint CK_empleados_sueldo check (sueldo>=0);

 alter table empleados
  add sueldo decimal(6,2) not null
  constraint CK_empleados_sueldo check (sueldo>=0)
  constraint DF_empleados_sueldo default 0;

 select * from empleados;

 exec sp_columns empleados;

 exec sp_helpconstraint empleados;

-- 86 - Campos calculados

 if object_id('articulos') is not null
  drop table articulos;

  create table articulos(
  codigo int identity,
  descripcion varchar(30),
  precio decimal(5,2) not null,
  cantidad smallint not null default 0,
  montototal as precio *cantidad
 );

 insert into articulos values('birome',1.5,100,150);

 insert into articulos values('birome',1.5,100);
 insert into articulos values('cuaderno 12 hojas',4.8,150);
 insert into articulos values('lapices x 12',5,200);

 select * from articulos;

 update articulos set precio=2 where descripcion='birome';
 select * from articulos;

 update articulos set cantidad=200 where descripcion='birome';
 select * from articulos;

 update articulos set montototal=300 where descripcion='birome';


 -- 87 - Tipo de dato definido por el usuario (crear - informacion)

  if object_id ('empleados') is not null
  drop table empleados;

 if exists (select name from systypes
  where name = 'tipo_legajo')
  exec sp_droptype tipo_legajo;

 exec sp_addtype tipo_legajo, 'char(4)','not null';

 exec sp_help tipo_legajo;

 create table empleados(
  legajo tipo_legajo,
  documento char(8),
  nombre varchar(30)
 );

 insert into empleados default values;

 insert into empleados values('A111','22222222','Juan Perez');


 -- 88 - Tipo de dato definido por el usuario (asociación de reglas)

  if object_id ('empleados') is not null
  drop table empleados;
  if object_id ('clientes') is not null
  drop table clientes;

  if exists (select *from systypes
  where name = 'tipo_año')
   exec sp_droptype tipo_año;

 exec sp_addtype tipo_año, 'int','null';

 exec sp_help tipo_año;

 create table empleados(
  documento char(8),
  nombre varchar(30),
  añoingreso tipo_año
 );

 if object_id ('RG_año') is not null
   drop rule RG_año;

 create rule RG_año
  as @año between 1990 and datepart(year,getdate());

 exec sp_bindrule RG_año, 'tipo_año', 'futureonly';

 exec sp_helpconstraint empleados;

 create table clientes(
  documento char(8),
  nombre varchar(30),
  añoingreso tipo_año
 );

 exec sp_helpconstraint clientes;

 insert into empleados values('11111111','Ana Acosta',2050);
 select * from empleados;

 insert into clientes values('22222222','Juan Perez',2050);

 exec sp_unbindrule 'tipo_año';

 exec sp_helpconstraint clientes;

 exec sp_bindrule RG_año, 'tipo_año';

 insert into empleados values('33333333','Romina Guzman',1900);

 exec sp_help tipo_año;

 if object_id ('RG_añonegativo') is not null
   drop rule RG_añonegativo;

 create rule RG_añonegativo
  as @año between -2000 and -1;

 exec sp_bindrule RG_añonegativo, 'clientes.añoingreso';

 exec sp_helpconstraint clientes;

 exec sp_help tipo_año;

 insert into empleados values('44444444','Pedro Perez',-1900);

 insert into clientes values('44444444','Pedro Perez',-1900);
 select * from clientes;


-- 89 - Tipo de dato definido por el usuario (valores predeterminados)

   if object_id ('empleados') is not null
  drop table empleados;
  if object_id ('clientes') is not null
  drop table clientes;

 if exists (select *from systypes
  where name = 'tipo_año')
   exec sp_droptype tipo_año;

 exec sp_addtype tipo_año, 'int','null';

 exec sp_help tipo_año;

 create table empleados(
  documento char(8),
  nombre varchar(30),
  añoingreso tipo_año
 );

 if object_id ('VP_añoactual') is not null
   drop default VP_añoactual;

 create default VP_añoactual
  as datepart(year,getdate());

 exec sp_bindefault VP_añoactual, 'tipo_año', 'futureonly';

 exec sp_helpconstraint empleados;

 create table clientes(
  documento char(8),
  nombre varchar(30),
  añoingreso tipo_año
 );

 exec sp_helpconstraint clientes;

 insert into empleados default values;
 select * from empleados;

 insert into clientes default values;
 select * from clientes;

 if object_id ('VP_año2000') is not null
   drop default Vp_año2000;

 create default VP_año2000
  as 2000;

 exec sp_bindefault VP_año2000, 'tipo_año';

 exec sp_helpconstraint empleados;

 exec sp_helpconstraint clientes;

 insert into empleados default values;
 select * from empleados;
 insert into clientes default values;
 select * from clientes;

 exec sp_help tipo_año;

 alter table empleados
 add constraint DF_empleados_año
 default 1990
 for añoingreso;

 exec sp_unbindefault 'tipo_año';

 alter table empleados
 add constraint DF_empleados_año
 default 1990
 for añoingreso;

 exec sp_bindefault VP_añoactual, 'tipo_año';

 exec sp_help tipo_año;

 exec sp_helpconstraint clientes;

 exec sp_helpconstraint empleados;


-- 90 - Tipo de dato definido por el usuario (eliminar)

   if object_id ('empleados') is not null
  drop table empleados;

  if exists (select *from systypes
  where name = 'tipo_año')
  exec sp_droptype tipo_año;

 exec sp_addtype tipo_año, 'int','null';

 if object_id ('RG_año') is not null
   drop rule RG_año;

 create rule RG_año
  as @año between 1990 and datepart(year,getdate());

 exec sp_bindrule RG_año, 'tipo_año';

 create table empleados(
  documento char(8),
  nombre varchar(30),
  añoingreso tipo_año
 );

 insert into empleados values('22222222','Juan Lopez',1980);

 insert into empleados values('22222222','Juan Lopez',2000);

 drop rule RG_año;

 exec sp_unbindrule 'tipo_año';

 exec sp_helpconstraint empleados;
 exec sp_help tipo_año;

 drop rule RG_año;

 exec sp_help RG_año;

 insert into empleados values('22222222','Juan Lopez',1980);

 exec sp_droptype tipo_año;

 drop table empleados;

 exec sp_help tipo_año;

 exec sp_droptype tipo_año;

 exec sp_help tipo_año;


-- 92 - Subconsultas como expresión
 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  primary key(documento),
  constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
 );

 insert into alumnos values('30111111','Ana Algarbe',5.1);
 insert into alumnos values('30222222','Bernardo Bustamante',3.2);
 insert into alumnos values('30333333','Carolina Conte',4.5);
 insert into alumnos values('30444444','Diana Dominguez',9.7);
 insert into alumnos values('30555555','Fabian Fuentes',8.5);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70);

 select alumnos.*
  from alumnos
  where nota=
   (select max(nota) from alumnos);

 select documento ,nombre, nota
  from alumnos
  where nota=
   (select nombre,max(nota) from alumnos);

 select alumnos.*,
 (select avg(nota) from alumnos)-nota as diferencia
  from alumnos
  where nota<
   (select avg(nota) from alumnos);

 update alumnos set nota=4
  where nota=
   (select min(nota) from alumnos);

 delete from alumnos
 where nota<
   (select avg(nota) from alumnos);




--   93 - Subconsultas con in

    if (object_id('ciudades')) is not null
   drop table ciudades;
   if (object_id('clientes')) is not null
   drop table clientes;

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  codigociudad tinyint not null,
  primary key(codigo),
  constraint FK_clientes_ciudad
   foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade,
 );

 insert into ciudades (nombre) values('Cordoba');
 insert into ciudades (nombre) values('Cruz del Eje');
 insert into ciudades (nombre) values('Carlos Paz');
 insert into ciudades (nombre) values('La Falda');
 insert into ciudades (nombre) values('Villa Maria');

 insert into clientes values ('Lopez Marcos','Colon 111',1);
 insert into clientes values ('Lopez Hector','San Martin 222',1);
 insert into clientes values ('Perez Ana','San Martin 333',2);
 insert into clientes values ('Garcia Juan','Rivadavia 444',3);
 insert into clientes values ('Perez Luis','Sarmiento 555',3);
 insert into clientes values ('Gomez Ines','San Martin 666',4);
 insert into clientes values ('Torres Fabiola','Alem 777',5);
 insert into clientes values ('Garcia Luis','Sucre 888',5);

 select nombre
  from ciudades
  where codigo in
   (select codigociudad
     from clientes
     where domicilio like 'San Martin %');

 select distinct ci.nombre
  from ciudades as ci
  join clientes as cl
  on codigociudad=ci.codigo
  where domicilio like 'San Martin%';

 select nombre
  from ciudades
  where codigo not in
   (select codigociudad
     from clientes
     where nombre like 'G%');

 select codigociudad
  from clientes
  where nombre like 'G%';


 --  94 - Subconsultas any - some - all
    
	if object_id('inscriptos') is not null
  drop table inscriptos;
  if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select numero,nombre,deporte
  from socios as s
  join inscriptos as i
  on numerosocio=numero;

 select nombre
  from socios
  join inscriptos as i
  on numero=numerosocio
  where deporte='natacion' and 
  numero= any
  (select numerosocio
    from inscriptos as i
    where deporte='tenis');

 select deporte
  from inscriptos as i
  where numerosocio=1 and
  deporte= any
   (select deporte
    from inscriptos as i
    where numerosocio=2);

 select i1.deporte
  from inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  where i1.numerosocio=1 and
  i2.numerosocio=2;

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>any
   (select cuotas
    from inscriptos
    where numerosocio=1);

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>all
   (select cuotas
    from inscriptos
    where numerosocio=1);

 delete from inscriptos
  where numerosocio=any
   (select numerosocio 
    from inscriptos
    where cuotas=0);



 -- 95 - Subconsultas correlacionadas

  if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre,domicilio,
  (select count(*)
    from inscriptos as i
    where s.numero=i.numerosocio) as 'deportes'
 from socios as s;

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;


--  96 - Exists y No Exists

   if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select nombre
  from socios as s
  where not exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select s.*
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.cuotas=10);



--	 97 - Subconsulta simil autocombinación

   if object_id('deportes') is not null
  drop table deportes;

  create table deportes(
  nombre varchar(15),
  profesor varchar(30),
  dia varchar(10),
  cuota decimal(5,2),
 );
 
 insert into deportes values('tenis','Ana Lopez','lunes',20);
 insert into deportes values('natacion','Ana Lopez','martes',15);
 insert into deportes values('futbol','Carlos Fuentes','miercoles',10);
 insert into deportes values('basquet','Gaston Garcia','jueves',15);
 insert into deportes values('padle','Juan Huerta','lunes',15);
 insert into deportes values('handball','Juan Huerta','martes',10);

 select distinct d1.profesor
  from deportes as d1
  where d1.profesor in
  (select d2.profesor
    from deportes as d2 
    where d1.nombre <> d2.nombre);

 select distinct d1.profesor
  from deportes as d1
  join deportes as d2
  on d1.profesor=d2.profesor
  where d1.nombre<>d2.nombre;

 select nombre
  from deportes
  where nombre<>'natacion' and
  dia =
   (select dia
     from deportes
     where nombre='natacion');

 select d1.nombre
  from deportes as d1
  join deportes as d2
  on d1.dia=d2.dia
  where d2.nombre='natacion' and
  d1.nombre<>d2.nombre;


--  98 - Subconsulta en lugar de una tabla 

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  año char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,año),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on delete cascade
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
 from deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;

 select s.nombre,td.deporte,td.profesor,td.año,td.matricula
  from socios as s
  join (select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
	from deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;


 -- 99 - Subconsulta (update - delete)

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  matricula char(1),-- 'n' o 's'
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis','s');
 insert into inscriptos values(1,'basquet','s');
 insert into inscriptos values(1,'natacion','s');
 insert into inscriptos values(2,'tenis','s');
 insert into inscriptos values(2,'natacion','s');
 insert into inscriptos values(2,'basquet','n');
 insert into inscriptos values(2,'futbol','n');
 insert into inscriptos values(3,'tenis','s');
 insert into inscriptos values(3,'basquet','s');
 insert into inscriptos values(3,'natacion','n');
 insert into inscriptos values(4,'basquet','n');

 update inscriptos set matricula='s'
  where numerosocio=
   (select numero
     from socios
     where documento='25555555');

 delete from inscriptos
  where numerosocio in
   (select numero
    from socios as s
    join inscriptos
    on numerosocio=numero
    where matricula='n');


--	100 - Subconsulta (insert)


   if object_id('facturas') is not null
  drop table facturas;
 if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(codigo)
 );

 create table facturas(
  numero int not null,
  fecha datetime,
  codigocliente int not null,
  total decimal(6,2),
  primary key(numero),
  constraint FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on update cascade
 );

 insert into clientes values('Juan Lopez','Colon 123');
 insert into clientes values('Luis Torres','Sucre 987');
 insert into clientes values('Ana Garcia','Sarmiento 576');
 insert into clientes values('Susana Molina','San Martin 555');

 insert into facturas values(1200,'2007-01-15',1,300);
 insert into facturas values(1201,'2007-01-15',2,550);
 insert into facturas values(1202,'2007-01-15',3,150);
 insert into facturas values(1300,'2007-01-20',1,350);
 insert into facturas values(1310,'2007-01-22',3,100);

 if object_id ('clientespref') is not null
  drop table clientespref;
 create table clientespref(
  nombre varchar(30),
  domicilio varchar(30)
 );

 insert into clientespref
  select nombre,domicilio
   from clientes 
   where codigo in 
    (select codigocliente
     from clientes as c
     join facturas as f
     on codigocliente=codigo
     group by codigocliente
     having sum(total)>500);

 select * from clientespref;


-- 101 - Crear tabla a partir de otra (select - into)

 if object_id('empleados')is not null
  drop table empleados;
 if object_id('sucursales')is not null
  drop table sucursales;

 create table sucursales( 
  codigo int identity,
  ciudad varchar(30) not null,
  primary key(codigo)
 ); 

 create table empleados( 
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  codigosucursal int,
  primary key(documento),
  constraint FK_empleados_sucursal
   foreign key (codigosucursal)
   references sucursales(codigo)
   on update cascade
 ); 

 insert into sucursales values('Cordoba');
 insert into sucursales values('Villa Maria');
 insert into sucursales values('Carlos Paz');
 insert into sucursales values('Cruz del Eje');

 insert into empleados values('22222222','Ana Acosta','Avellaneda 111','Secretaria',500,1);
 insert into empleados values('23333333','Carlos Caseros','Colon 222','Sistemas',800,1);
 insert into empleados values('24444444','Diana Dominguez','Dinamarca 333','Secretaria',550,2);
 insert into empleados values('25555555','Fabiola Fuentes','Francia 444','Sistemas',750,2);
 insert into empleados values('26666666','Gabriela Gonzalez','Guemes 555','Secretaria',580,3);
 insert into empleados values('27777777','Juan Juarez','Jujuy 777','Secretaria',500,4);
 insert into empleados values('28888888','Luis Lopez','Lules 888','Sistemas',780,4);
 insert into empleados values('29999999','Maria Morales','Marina 999','Contaduria',670,4);

 select documento,nombre,domicilio,seccion,sueldo,ciudad
  from empleados
  join sucursales on codigosucursal=codigo;

 if object_id('secciones') is not null
  drop table secciones;

 select distinct seccion as nombre
  into secciones
  from empleados;

 select *from secciones;

 if object_id('sueldosxseccion') is not null
  drop table sueldosxseccion;

 select seccion, sum(sueldo) as total
  into sueldosxseccion
  from empleados
  group by seccion;

 select *from sueldosxseccion;

 if object_id('maximossueldos') is not null
  drop table maximossueldos;

 select top 3 *
  into maximossueldos
  from empleados
  order by sueldo;

 select *from maximossueldos;

 if object_id('sucursalCordoba') is not null
  drop table sucursalCordoba;

 select nombre,ciudad
  into sucursalCordoba
  from empleados
  join sucursales
  on codigosucursal=codigo
  where ciudad='Cordoba';

 select *from sucursalCordoba;


-- 103 - Vistas


 if object_id('inscriptos') is not null  
  drop table inscriptos;
 if object_id('socios') is not null  
  drop table socios;
 if object_id('profesores') is not null  
  drop table profesores; 
 if object_id('cursos') is not null  
  drop table cursos;

 create table socios(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento)
 );

 create table profesores(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_profesores_documento
   primary key (documento)
 );

 create table cursos(
  numero tinyint identity,
  deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  documentoprofesor char(8),
  constraint PK_cursos_numero
   primary key (numero),
 );

 create table inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1),
  constraint CK_inscriptos_matricula check (matricula in('s','n')),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero)
 );

 insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into profesores values('22222222','Ana Acosta','Avellaneda 231');
 insert into profesores values('23333333','Carlos Caseres','Colon 245');
 insert into profesores values('24444444','Daniel Duarte','Sarmiento 987');
 insert into profesores values('25555555','Esteban Lopez','Sucre 1204');

 insert into cursos values('tenis','lunes','22222222');
 insert into cursos values('tenis','martes','22222222');
 insert into cursos values('natacion','miercoles','22222222');
 insert into cursos values('natacion','jueves','23333333');
 insert into cursos values('natacion','viernes','23333333');
 insert into cursos values('futbol','sabado','24444444');
 insert into cursos values('futbol','lunes','24444444');
 insert into cursos values('basquet','martes','24444444');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'n');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'s');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',8,'s');

 if object_id('vista_club') is not null drop view vista_club;

 create view vista_club as
  select s.nombre as socio,s.documento as docsocio,s.domicilio as domsocio,c.deporte,dia,
   p.nombre as profesor, matricula
   from socios as s
   full join inscriptos as i
   on s.documento=i.documentosocio
   full join cursos as c
   on i.numero=c.numero
   full join profesores as p
   on c.documentoprofesor=p.documento;

 select *from vista_club;

 select deporte,dia,count(socio) as cantidad
  from vista_club
  where deporte is not null
  group by deporte,dia
  order by cantidad;

 select deporte,dia from vista_club
  where socio is null and deporte is not null;

 select socio from vista_club
  where deporte is null and socio is not null;

 select profesor from vista_club where deporte is null and profesor is not null;

 select socio, docsocio from vista_club where deporte is not null and matricula <> 's';

 select distinct profesor,dia
  from vista_club where profesor is not null;

 select distinct profesor,dia
  from vista_club where profesor is not null
  order by dia;

 select socio from vista_club
  where deporte='tenis' and dia='lunes';

 if object_id('vista_inscriptos') is not null
  drop view vista_inscriptos;

 create view vista_inscriptos as
  select deporte,dia,
   (select count(*)
    from inscriptos as i
    where i.numero=c.numero) as cantidad
  from cursos as c;

 select *from vista_inscriptos;

  
 -- 107 - Vistas (with check option)

 if object_id('clientes') is not null
  drop table clientes;
 if object_id('ciudades') is not null
  drop table ciudades;

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  constraint PK_ciudades
   primary key (codigo)
 );

 create table clientes(
  nombre varchar(20),
  apellido varchar(20),
  documento char(8),
  domicilio varchar(30),
  codigociudad tinyint
   constraint FK_clientes_ciudad
    foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade
 );

 insert into ciudades values('Cordoba');
 insert into ciudades values('Carlos Paz');
 insert into ciudades values('Cruz del Eje');
 insert into ciudades values('La Falda');

 insert into clientes values('Juan','Perez','22222222','Colon 1123',1);
 insert into clientes values('Karina','Lopez','23333333','San Martin 254',2);
 insert into clientes values('Luis','Garcia','24444444','Caseros 345',1);
 insert into clientes values('Marcos','Gonzalez','25555555','Sucre 458',3);
 insert into clientes values('Nora','Torres','26666666','Bulnes 567',1);
 insert into clientes values('Oscar','Luque','27777777','San Martin 786',4);

 if object_id('vista_clientes') is not null
  drop view vista_clientes;

 create view vista_clientes
 as
  select apellido, cl.nombre, documento, domicilio, cl.codigociudad,ci.nombre as ciudad
  from clientes as cl
  join ciudades as ci
  on codigociudad=codigo
  where ci.nombre='Cordoba'
  with check option;

 select * from vista_clientes;

 update vista_clientes set apellido='Pereyra' where documento='22222222';

 select * from clientes;

 update vista_clientes set codigociudad=2 where documento='22222222';


 -- 108 - Vistas (modificar datos de una tabla a través de vistas)
  
  if object_id('inscriptos') is not null  
  drop table inscriptos;
  if object_id('socios') is not null  
  drop table socios;
  if object_id('cursos') is not null  
  drop table cursos;

 create table socios(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento)
 );

 create table cursos(
  numero tinyint identity,
  deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  profesor varchar(20),
  constraint PK_cursos_numero
   primary key (numero),
 );

 create table inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero),
  constraint FK_inscriptos_documento
   foreign key (documentosocio)
   references socios(documento)
   on update cascade,
  constraint FK_inscriptos_numero
   foreign key (numero)
   references cursos(numero)
   on update cascade
  );

 insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into cursos values('tenis','lunes','Ana Acosta');
 insert into cursos values('tenis','martes','Ana Acosta');
 insert into cursos values('natacion','miercoles','Ana Acosta');
 insert into cursos values('natacion','jueves','Carlos Caseres');
 insert into cursos values('futbol','sabado','Pedro Perez');
 insert into cursos values('futbol','lunes','Pedro Perez');
 insert into cursos values('basquet','viernes','Pedro Perez');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'n');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'s');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',1,'s');
 insert into inscriptos values('32222222',7,'s');

 select documento,nombre,domicilio,c.numero,deporte,dia, profesor,matricula
  from socios as s
  join inscriptos as i
  on s.documento=documentosocio
  join cursos as c
  on c.numero=i.numero;

 if object_id('vista_cursos') is not null
  drop view vista_cursos;

 create view vista_cursos
  as
  select numero,deporte,dia
   from cursos;

 select *from vista_cursos order by deporte;

 insert into vista_cursos values('futbol','martes');
 select * from cursos;

 update vista_cursos set dia='miercoles' where numero=8;
 select *from cursos;

 delete from vista_cursos where numero=8;
 select * from cursos;

 delete from vista_cursos where numero=1;

 if object_id('vista_inscriptos') is not null
  drop view vista_inscriptos;
 create view vista_inscriptos
  as
  select i.documentosocio,s.nombre,i.numero,c.deporte,dia
  from inscriptos as i
  join socios as s
  on s.documento=documentosocio
  join cursos as c
  on c.numero=i.numero;

 insert into vista_inscriptos values('32222222','Hector Huerta',6,'futbol','lunes');

 update vista_inscriptos set nombre='Fabio Fuentes' where nombre='Fabian Fuentes';

 select * from socios;

 update vista_inscriptos set documentosocio='30000111' where documentosocio='30000000';

 delete from vista_inscriptos where documentosocio='30000111' and deporte='tenis';


 -- 109 - Vistas modificar (alter view)

   if object_id('inscriptos') is not null  
  drop table inscriptos;
 if object_id('socios') is not null  
  drop table socios;
 if object_id('cursos') is not null  
  drop table cursos;

 create table socios(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento)
 );

 create table cursos(
  numero tinyint identity,
  deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  profesor varchar(20),
  constraint PK_cursos_numero
   primary key (numero),
 );

 create table inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero),
  constraint FK_inscriptos_documento
   foreign key (documentosocio)
   references socios(documento)
   on update cascade,
  constraint FK_inscriptos_numero
   foreign key (numero)
   references cursos(numero)
   on update cascade
  );

 insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into cursos values('tenis','lunes','Ana Acosta');
 insert into cursos values('tenis','martes','Ana Acosta');
 insert into cursos values('natacion','miercoles','Ana Acosta');
 insert into cursos values('natacion','jueves','Carlos Caseres');
 insert into cursos values('futbol','sabado','Pedro Perez');
 insert into cursos values('futbol','lunes','Pedro Perez');
 insert into cursos values('basquet','viernes','Pedro Perez');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'s');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'n');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',1,'n');
 insert into inscriptos values('32222222',7,'n');

 if object_id('vista_deudores') is not null
  drop view vista_deudores;

 create view vista_deudores
 as
  select documento,nombre,c.deporte,c.dia,matricula
  from socios as s
  join inscriptos as i
  on documento=documentosocio
  join cursos as c
  on c.numero=i.numero
  where matricula='n'
  with check option;

 select *from vista_deudores;

 sp_helptext vista_deudores;

 update vista_deudores set matricula='s' where documento='31111111';

 update vista_deudores set documento='31111113' where documento='31111111';

 select *from socios;
 select *from inscriptos;

 alter view vista_deudores
  with encryption
 as
  select documento,nombre,domicilio,c.deporte,c.dia,matricula
  from socios as s
  join inscriptos as i
  on documento=documentosocio
  join cursos as c
  on c.numero=i.numero
  where matricula='n';

 select *from vista_deudores;

 sp_helptext vista_deudores;

 update vista_deudores set matricula='s' where documento='31111113';

 select *from vista_empleados;

 if object_id('vista_socios') is not null
  drop view vista_socios;

 create view vista_socios
 as
  select *from socios;

 select *from vista_socios;

 alter table socios
 add telefono char(10);

 select *from vista_socios;

 alter view vista_socios
 as
  select *from socios;

 select *from vista_socios; 
 


-- 110 - Lenguaje de control de flujo (case)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  fechaingreso datetime,
  cantidadhijos tinyint,
  sueldo decimal(5,2),
  primary key(documento)
);

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

 select sexo, count(*) as cantidad, obsequio=
  case 
   when sexo='f' then 'rosas'
   else 'corbata'
  end
  from empleados
  where datepart(month,fechanacimiento)=5
  group by sexo;

 select nombre,datepart(year,fechaingreso) as añoingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as AñosdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
     when 0 then 'Si'  --si la cantidad de años es divisible por 10
     else 'No'
   end
  from empleados
  where datepart(month,fechaingreso)=4;

 select nombre,sueldo,cantidadhijos,porhijo=
  case 
   when sueldo<=500 then 200
   else 100
  end,
 salariofamilar=
  case
   when sueldo<=500 then 200*cantidadhijos
   else 100*cantidadhijos
  end,
 sueldototal=
  case
   when sueldo<=500 then sueldo+(200*cantidadhijos)
   else sueldo+(100*cantidadhijos)
  end
  from empleados
  order by sueldototal;


 -- 111 - Lenguaje de control de flujo (if)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  sueldo decimal(5,2),
  primary key(documento)
);

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10',550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06',650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25',510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29',700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22',400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10',420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21',350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12',390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02',400);

 if exists(select * from empleados
	   where datepart(month,fechanacimiento)=5)--si hay empleados que cumplan en mayo
  (select sexo,count(*) as cantidad 
   from empleados
   where datepart(month,fechanacimiento)=5
   group by sexo)
 else select 'no hay empleados que cumplan en mayo';



--  112 - Variables de usuario
 
 if object_id('alumnos') is not null
  drop table alumnos;
 if object_id('notas') is not null
  drop table notas;

 create table alumnos(
  documento char(8) not null
   constraint CK_alumnos_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  nombre varchar(30),
  constraint PK_alumnos
  primary key(documento)
 );

 create table notas(
  documento char(8) not null,
  nota decimal(4,2)
   constraint CK_notas_nota check (nota between 0 and 10),
  constraint FK_notas_documento
  foreign key(documento)
  references alumnos(documento)
  on update cascade
 );

 insert into alumnos values('30111111','Ana Algarbe');
 insert into alumnos values('30222222','Bernardo Bustamante');
 insert into alumnos values('30333333','Carolina Conte');
 insert into alumnos values('30444444','Diana Dominguez');
 insert into alumnos values('30555555','Fabian Fuentes');
 insert into alumnos values('30666666','Gaston Gonzalez');

 insert into notas values('30111111',5.1);
 insert into notas values('30222222',7.8);
 insert into notas values('30333333',4);
 insert into notas values('30444444',2.5);
 insert into notas values('30666666',9.9);
 insert into notas values('30111111',7.3);
 insert into notas values('30222222',8.9);
 insert into notas values('30444444',6);
 insert into notas values('30666666',8);

 declare @documento char(8)
 select @documento;

 select @documento= documento from notas
  where nota=(select max(nota) from notas);

 declare @documento char(8)
 select @documento= documento from notas
  where nota=(select max(nota) from notas)
 select nombre from alumnos where documento=@documento;


--  113 - Tipos de datos text, ntext y image (remplazados por varchar(max), nvarchar(max) y varbinary(max))

    if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text
  constraint DF_visitas_comentarios default 'Ninguno',
  constraint PK_visitas
  primary key(numero)
);

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente página');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 select *from visitas;

 select count(*)
  from visitas
  where comentarios is not null;

 alter table visitas
  add constraint CK_comentarios
  check (comentarios not like '[0-9]%');

 alter table visitas
  alter column comentarios text not null;

 if object_id('RG_texto') is not null
  drop rule RG_texto;

 create rule RG_texto
 as @valor not like '[0-9]%';

 exec sp_bindrule RG_texto, 'visitas.nombre';

 exec sp_bindrule RG_texto, 'visitas.comentarios';

 alter table visitas
  drop DF_visitas_comentarios;

 insert into visitas default values;
 select *from visitas;

 if object_id('VP_Sincomentarios') is not null
  drop default VP_Sincomentarios;

 create default VP_Sincomentarios
  as 'Sin comentarios';

 exec sp_bindefault VP_Sincomentarios, 'visitas.comentarios';

 insert into visitas default values;
 select * from visitas;

 if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios varchar(max)
  constraint DF_visitas_comentarios default 'Ninguno',
  constraint PK_visitas
  primary key(numero)
);

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente página');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 select * from visitas;


--   115 - Tipo de dato text - ntext e image (leer)


    if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text,
  constraint PK_visitas
  primary key(numero)
);

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente página');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas
  where numero=3
 readtext visitas.comentarios @puntero 0 10;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas
  where numero=1
 readtext visitas.comentarios @puntero 0 10;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1
 if (textvalid('visitas.comentarios', @puntero)=1)
  readtext visitas.comentarios @puntero 0 0
 else select 'puntero invalido';


 -- 116 - Tipo de dato text - ntext e image (escribir)

    if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text,
  constraint PK_visitas
  primary key(numero)
);

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente página');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 select *from visitas;

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where numero=3
 
  writetext visitas.comentarios @puntero 'Esta página es excelente, no hay otra mejor.';

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where numero=3
 
 readtext visitas.comentarios @puntero 0 0;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1

 writetext visitas.comentarios @puntero 'Es una muy buena página, pero tiene algunos errores.';

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1
 if (textvalid('visitas.comentarios', @puntero)=1)
  writetext visitas.comentarios @puntero 'Es una muy buena página, pero tiene algunos errores.'
 else select 'puntero invalido, no se actualizó el registro';

 insert into visitas values ('Salvador Quiroga','salvador@hotmail.com','Argentina','2006-09-09 18:25','');

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where nombre='Salvador Quiroga'
 if (textvalid('visitas.comentarios', @puntero)=1)
  writetext visitas.comentarios @puntero 'Es una página más que interesante.';

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where nombre='Salvador Quiroga'
 
  readtext visitas.comentarios @puntero 0 0;


--  117 - Tipo de dato text - ntext e image (actualizar)

       if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos (
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  concepto text,
  constraint PK_alumnos
  primary key(documento)
 );

 insert into alumnos values ('22222222','Ana Acosta',3,'Participativo. Generoso');
 insert into alumnos values ('23333333','Carlos Caseres',7,'Poco participativo');
 insert into alumnos values ('24444444','Diego Duarte',8,'Buen compañero');
 insert into alumnos values ('25555555','Fabiola Fuentes',2,null);

 select *from alumnos;

 declare @puntero binary(16)
 select @puntero = textptr (concepto)
  from alumnos
  where documento='23333333'
  if (textvalid('alumnos.concepto',@puntero)=1)
   updatetext alumnos.concepto @puntero 5 null 'comunicativo'
  else
   select 'Puntero inválido';

 declare @puntero binary(16)
 select @puntero = textptr (concepto)
  from alumnos
  where documento='23333333'
 
 readtext alumnos.concepto @puntero 0 0;

 declare @puntero binary(16)
 select @puntero = textptr (concepto)
  from alumnos
  where documento='25555555'
  if (textvalid('alumnos.concepto',@puntero)=1)
   updatetext alumnos.concepto @puntero 0 0 'Muy comunicativo'
  else
   select 'Puntero inválido';

 declare @puntero binary(16)
 select @puntero = textptr (concepto)
  from alumnos
  where documento='24444444'
 updatetext alumnos.concepto @puntero 20 0 ' y estudioso';

 declare @puntero binary(16)
 select @puntero = textptr (concepto)
  from alumnos
  where documento='24444444'
  if (textvalid('alumnos.concepto',@puntero)=1)
   updatetext alumnos.concepto @puntero 5 0 'alumno y '
  else  select 'Puntero inválido';

 declare @puntero binary(16)
 select @puntero = textptr (concepto)
  from alumnos
  where documento='24444444'
 
 readtext alumnos.concepto @puntero 0 0;

 if object_id('reprobados') is not null
  drop table reprobados;

 create table reprobados(
  documento char(8) not null,
  concepto text
 );

 insert into reprobados values('22222222','');
 insert into reprobados values('25555555','');

 declare @puntero1 binary(16)
 select @puntero1 = textptr(concepto)
  from alumnos
  where documento='22222222'

 declare @puntero2 binary(16)
 select @puntero2 = textptr(concepto)
  from reprobados
  where documento='22222222'

  if (textvalid('alumnos.concepto',@puntero1)=1) 
    if (textvalid('reprobados.concepto',@puntero2)=1)
      updatetext reprobados.concepto @puntero2 0 null alumnos.concepto @puntero1
    else select 'Puntero a la tabla reprobados inválido'
  else select 'Puntero a la tabla alumnos inválido';

 declare @puntero binary(16)
 select @puntero = textptr(concepto)
  from reprobados
  where documento='22222222'
 readtext reprobados.concepto @puntero 0 0;

 declare @puntero1 binary(16)
 select @puntero1 = textptr(concepto)
  from alumnos
  where documento='25555555'

 declare @puntero2 binary(16)
 select @puntero2 = textptr(concepto)
  from reprobados
  where documento='25555555'

  if (textvalid('alumnos.concepto',@puntero1)=1) 
    if (textvalid('reprobados.concepto',@puntero2)=1)
      updatetext reprobados.concepto @puntero2 0 null alumnos.concepto @puntero1
    else select 'Puntero de "reprobados" inválido'
  else select 'Puntero de "alumnos" inválido';

 declare @puntero1 binary(16)
 select @puntero1 = textptr(concepto)
  from alumnos
  where documento='23333333'

 declare @puntero2 binary(16)
 select @puntero2 = textptr(concepto)
  from reprobados
  where documento='23333333'

  if (textvalid('alumnos.concepto',@puntero1)=1) 
    if (textvalid('reprobados.concepto',@puntero2)=1)
      updatetext reprobados.concepto @puntero2 0 null
      alumnos.concepto @puntero1
    else select 'Puntero de "reprobados" inválido'
  else select 'Puntero de "alumnos" inválido';


--   120 - Procedimientos almacenados (crear - ejecutar)
  
    if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',300,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',400,3,'Secretaria');

 if object_id('pa_empleados_sueldo') is not null
  drop procedure pa_empleados_sueldo;

 create procedure pa_empleados_sueldo
 as
  select nombre,apellido,sueldo
   from empleados;

 exec pa_empleados_sueldo;

 if object_id('pa_empleados_hijos') is not null
  drop procedure pa_empleados_hijos;

 create procedure pa_empleados_hijos
 as
  select nombre,apellido,cantidadhijos
   from empleados
   where cantidadhijos>0;

 exec pa_empleados_hijos;

 update empleados set cantidadhijos=1 where documento='22333333';
 exec pa_empleados_hijos;

 --  122 - Procedimientos almacenados (parámetros de entrada)

    if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',300,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',400,3,'Secretaria');

 if object_id('pa_empleados_sueldo') is not null
  drop procedure pa_empleados_sueldo;

 create procedure pa_empleados_sueldo
  @sueldo decimal(6,2)
 as
  select nombre,apellido,sueldo
   from empleados
    where sueldo>=@sueldo;

 exec pa_empleados_sueldo 400;
 exec pa_empleados_sueldo 500;

 exec pa_empleados_sueldo;

 if object_id('pa_empleados_actualizar_sueldo') is not null
  drop procedure pa_empleados_actualizar_sueldo;

 create procedure pa_empleados_actualizar_sueldo
  @sueldoanterior decimal(6,2),
  @sueldonuevo decimal(6,2)
 as
  update empleados set sueldo=@sueldonuevo
   where sueldo=@sueldoanterior;

 exec pa_empleados_actualizar_sueldo 300,350;
 select * from empleados;

 exec pa_empleados_actualizar_sueldo 350;

 exec pa_empleados_actualizar_sueldo @sueldonuevo=400,@sueldoanterior=350;

 select * from empleados;

 if object_id('pa_sueldototal') is not null
  drop procedure pa_sueldototal;

 create procedure pa_sueldototal
  @documento varchar(8) = '%'
 as
  select nombre,apellido,
   sueldototal=
   case 
    when sueldo<500 then sueldo+(cantidadhijos*200)
    when sueldo>=500 then sueldo+(cantidadhijos*100)
   end
   from empleados
   where documento like @documento;

 exec pa_sueldototal '22333333';
 exec pa_sueldototal '22444444';
 exec pa_sueldototal '22666666';

 exec pa_sueldototal;

--  123 - Procedimientos almacenados (parámetros de salida)

    if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',350,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',null,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',460,3,'Secretaria');
 insert into empleados values('22777777','Andres','Perez',580,3,'Sistemas');
 insert into empleados values('22888888','Laura','Garcia',400,3,'Secretaria');

 if object_id('pa_seccion') is not null
  drop procedure pa_seccion;

 create procedure pa_seccion
  @seccion varchar(20)='%',
  @promedio decimal(6,2) output,
  @mayor decimal(6,2) output
 as
  select @promedio=avg(sueldo)
   from empleados
   where seccion like @seccion
  select @mayor=max(sueldo)
   from empleados
    where seccion like @seccion;

 declare @p decimal(6,2), @m decimal(6,2)
 execute pa_seccion 'Contaduria', @p output, @m output
 select @p as promedio, @m as mayor

 execute pa_seccion 'Secretaria', @p output, @m output
 select @p as promedio, @m as mayor;

 declare @p decimal(6,2), @m decimal(6,2)
 execute pa_seccion @promedio=@p output,@mayor= @m output
 select @p as promedio, @m as mayor;

 if object_id('pa_sueldototal') is not null
  drop procedure pa_sueldototal;

 create procedure pa_sueldototal
  @documento varchar(8)='%',
  @sueldototal decimal(8,2) output
 as
  select @sueldototal=
   case 
    when sueldo<500 then sueldo+(cantidadhijos*200)
    when sueldo>=500 then sueldo+(cantidadhijos*100)
   end
   from empleados
   where documento like @documento;

 declare @st decimal(8,2)
 exec pa_sueldototal '22666666', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal '22999999', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal '22555555', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal @sueldototal=@st output
 select @st;  


--  124 - Procedimientos almacenados (return)


   if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 

 if object_id('pa_empleados_seccion') is not null
  drop procedure pa_empleados_seccion;

 create procedure pa_empleados_seccion
  @seccion varchar(20)=null
 as 
 if @seccion is null
 begin 
  select 'Debe indicar una seccion'
  return
 end
 select nombre from empleados where seccion=@seccion;

 exec pa_empleados_seccion 'Secretaria';

 exec pa_empleados_seccion;

 if object_id('pa_actualizarhijos') is not null
  drop procedure pa_actualizarhijos;

 create procedure pa_actualizarhijos
  @documento char(8)=null,
  @hijos tinyint=null
 as 
 if (@documento is null) or (@hijos is null)
  return 0
 else 
 begin
  update empleados set cantidadhijos=@hijos where documento=@documento
  return 1
 end;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22222222',3
 select 'Registro actualizado=1' = @retorno;

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22333333'
 select 'Registro actualizado=1' = @retorno;

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22333333',2
 if @retorno=1 select 'Registro actualizado'
 else select 'Registro no actualizado, se necesita un documento y la cantidad de hijos';

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos @hijos=4
 if @retorno=1 select 'Registro actualizado'
 else select 'Registro no actualizado, se necesita un documento y la cantidad de hijos';


 -- 128 - Procedimientos almacenados (insertar)
   
    if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(40),
  nota decimal(4,2),
  primary key(documento)
 );

 insert into alumnos values ('22222222','Pedro Lopez',5);
 insert into alumnos values ('23333333','Ana Lopez',4);
 insert into alumnos values ('24444444','Maria Juarez',8);
 insert into alumnos values ('25555555','Juan Garcia',5.6);
 insert into alumnos values ('26666666','Karina Torres',2);
 insert into alumnos values ('27777777','Nora Torres',7.5);
 insert into alumnos values ('28888888','Mariano Herrero',3.5);

 if object_id('aprobados') is not null
  drop table aprobados;

 create table aprobados(
  documento char(8),
  nombre varchar(40),
  nota decimal(4,2)
 );

 if object_id('desaprobados') is not null
  drop table desaprobados;

 create table desaprobados(
  documento char(8),
  nombre varchar(40)
 );

 if object_id('pa_aprobados') is not null
  drop procedure pa_aprobados;

 create proc pa_aprobados
  as
  select *
   from alumnos
   where nota>=4;

 insert into aprobados exec pa_aprobados;

 select * from aprobados;

 if object_id('pa_desaprobados') is not null
  drop procedure pa_desaprobados;

 create proc pa_desaprobados
  as
  select documento,nombre
   from alumnos
   where nota<4;

 insert into desaprobados exec pa_desaprobados;

 select * from desaprobados;


-- 131 - Procedimientos Almacenados (con join)

  if (object_id('libros')) is not null
  drop table libros;
 if (object_id('ventas')) is not null
  drop table ventas;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  cantidad int,
  primary key (codigo)
 );

 create table ventas(
  numero int identity,
  codigo int not null,
  preciounitario decimal(6,2),
  cantidad int, 
  constraint PK_ventas primary key (numero),
  constraint FK_ventas_codigolibro
   foreign key (codigo)
   references libros(codigo)
   on update cascade
 );

 insert into libros values('Uno','Richard Bach','Planeta',15,100);
 insert into libros values('Ilusiones','Richard Bach','Planeta',18,150);
 insert into libros values('El aleph','Borges','Emece',25,200);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',20,300);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,200);
 
 insert into ventas values(1,15,1);
 insert into ventas values(2,18,1);
 insert into ventas values(3,25,100);
 insert into ventas values(1,15,50);

 if (object_id('pa_ventas')) is not null
  drop proc pa_ventas;

  create procedure pa_ventas
  as
   select v.numero,
   (l.titulo+'-'+l.autor+'-'+l.editorial) as libro,
   v.preciounitario,
   v.cantidad,
   (v.preciounitario*v.cantidad) as total
   from ventas as v
   join libros as l
   on v.codigo=l.codigo;

 exec pa_ventas;

 if (object_id('pa_vender')) is not null
  drop proc pa_vender;

 create procedure pa_vender
  @codigo int=null,
  @cantidad int=1
  as
   --verificamos que el código exista
   if not exists (select *from libros where codigo=@codigo) or (@codigo is null)
     select 'Ingrese un codigo de libro válido'
   else
   begin --verificamos que haya stock
     declare @disponibles int
     select @disponibles= cantidad from libros where codigo=@codigo
     if (@disponibles<@cantidad)
       select 'Solo hay '+cast(@disponibles as varchar(10))+' disponibles'
     else
     begin
       declare @precio decimal(6,2) 
       select @precio= precio from libros where codigo=@codigo
       insert into ventas values(@codigo,@precio,@cantidad)
       update libros set cantidad=cantidad-@cantidad where @codigo=codigo
     end
   end;

 exec pa_vender 1,20;

 select *from ventas;
 select *from libros;

 exec pa_vender 9;

 exec pa_vender 5,250;


-- 135 - Funciones escalares (crear y llamar)
   
     if object_id('consultas') is not null
  drop table consultas;
 if object_id('medicos') is not null
  drop table medicos;

 create table medicos (
  documento char(8) not null,
  nombre varchar(30),
  constraint PK_medicos 
   primary key clustered (documento)
 );

 create table consultas(
  fecha datetime,
  medico char(8) not null,
  paciente varchar(30),
  constraint PK_consultas
   primary key (fecha,medico),
  constraint FK_consultas_medico
   foreign key (medico)
   references medicos(documento)
   on update cascade
   on delete cascade
 );

 insert into medicos values('22222222','Alfredo Acosta');
 insert into medicos values('23333333','Pedro Perez');
 insert into medicos values('24444444','Marcela Morales');

 insert into consultas values('2007/03/26 8:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/26 8:00','23333333','Gaston Gomez');
 insert into consultas values('2007/03/26 8:30','22222222','Nora Norte');
 insert into consultas values('2007/03/28 9:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/29 8:00','24444444','Nora Norte');
 insert into consultas values('2007/03/24 8:30','22222222','Hector Huerta'); 
 insert into consultas values('2007/03/24 9:30','23333333','Hector Huerta');

 if object_id('f_nombreDia') is not null
  drop function f_nombreDia;

 create function f_nombreDia
 (@fecha varchar(30))
  returns varchar(10)
  as
  begin
    declare @nombre varchar(10)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=
      case datename(weekday,@fecha)
       when 'Monday' then 'lunes'
       when 'Tuesday' then 'martes'
       when 'Wednesday' then 'miércoles'
       when 'Thursday' then 'jueves'
       when 'Friday' then 'viernes'
       when 'Saturday' then 'sábado'
       when 'Sunday' then 'domingo'
      end--case
    end--si es una fecha válida
    return @nombre
 end;
 
 if object_id('f_horario') is not null
  drop function f_horario;

 create function f_horario
 (@fecha varchar(30))
  returns varchar(5)
  as
  begin
    declare @nombre varchar(5)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(hour,@fecha) as char(2)))+':'
      set @nombre=@nombre+rtrim(cast(datepart(minute,@fecha) as char(2)))
    end--si es una fecha válida
    return @nombre
 end;

 if object_id('f_fecha') is not null
  drop function f_fecha;

 create function f_fecha
 (@fecha varchar(30))
  returns varchar(12)
  as
  begin
    declare @nombre varchar(12)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(month,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(year,@fecha) as char(4)))
    end--si es una fecha válida
    return @nombre
 end;

 select dbo.f_nombredia(fecha) as dia,
  dbo.f_fecha(fecha) as fecha,
  dbo.f_horario(fecha) as horario,
  paciente
  from consultas as c
  join medicos as m
  on m.documento=c.medico
  where m.nombre='Alfredo Acosta';

 select fecha, m.nombre
 from consultas as c
 join medicos as m
 on m.documento=c.medico
 where dbo.f_nombredia(fecha)='sábado';

 declare @valor char(30)
 set @valor='2007/04/09'
 select dbo.f_nombreDia(@valor);


--  136 - Funciones de tabla de varias instrucciones
   
     if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  apellido varchar(30) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(30),
  fechanacimiento datetime,
  constraint PK_empleados
   primary key(documento)
 );

 insert into empleados values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
 insert into empleados values('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
 insert into empleados values('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
 insert into empleados values('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

 if object_id('f_empleados') is not null
  drop function f_empleados;

 create function f_empleados
 (@opcion varchar(10)
 )
 returns @listado table
 (documento char(8),
 nombre varchar(60),
 domicilio varchar(60),
 nacimiento varchar(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   insert @listado 
    select documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as varchar(12))
     from empleados
  else
   insert @listado
   select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
   from empleados
  return
end;

 select *from dbo.f_empleados('total');

 select *from dbo.f_empleados();

 select *from dbo.f_empleados('');

 select *from dbo.f_empleados('parcial')
  where domicilio='Cordoba';


























































 




















  
































  
  

  
  






   


  








   









