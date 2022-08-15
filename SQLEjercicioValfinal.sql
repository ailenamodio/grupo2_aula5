create database peluqueriaCanina

--tabla  dueno
create table Dueno(
DNI int,
Nombre varchar (30),
Apellido varchar (30),
Telefono varchar (30),
Direccion varchar (30),
constraint pk_dni primary key (DNI)
)
/*tabla Perro*/
create table Perro(
ID_Perro int IDENTITY(1,1),
Nombre varchar (30),
Fecha_nac datetime2,
Sexo varchar (30),
DNI_dueno int,
constraint pk_cidp primary key (ID_Perro),
constraint fk_fdni foreign key(DNI_dueno) references Dueno (DNI)
)
create table Historial(
ID_Historial int IDENTITY(1,1),
Fecha datetime2,
Perro int,
Descripcion Varchar(50),
Monto int,
constraint pk_cidh primary key (ID_Historial),
constraint fk_fp foreign key(Perro) references Perro (ID_Perro)
);

insert into Dueno values (1234, 'Juan', 'Perez', 1235, 'salta 235');
insert into Dueno values (2345, 'Adriana', 'Sanchez',6789, 'roma 22');

insert into Perro values ('Negra', '2012-02-21T18:10:00', 'Masculino', 1234);
insert into Perro values ('Pupy', '2012-02-21T18:10:00', 'Femenino', 2345);

insert into Historial values ('2012-02-21T18:10:00', 1, 'cirugia miembro derecho', 3000);
insert into Historial values ('2012-02-21T18:10:00', 2, 'limpieza cuerpo', 1500);

/* ejercicio 10 sql*/
truncate table Historial
DBCC CHECKIDENT(Historial, reseed, 0)
