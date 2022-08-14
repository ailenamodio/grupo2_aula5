create database peluqueria canina
use peluqueria canina; 

--tabla  dueno
create table Dueno(
DNI int (11),
Nombre varchar (30),
Apellido varchar (30),
Telefono int,
Direccion varchar (30),
constraint pk_dni primary key (DNI)
)
/*tabla Perro*/
create table Perro(
ID_Perro varchar(10),
Nombre varchar (30),
Fecha_nac date,
Sexo varchar (30),
DNI_dueno int,
constraint pk_cidp primary key (ID_Perro),
constraint fk_fdni foreign key(DNI_dueno) references Dueno (DNI)
)
create table Historial(
ID_Historial varchar(10),
Fecha date,
Perro varchar,
Descripcion Varchar,
Monto int,
constraint pk_cidh primary key (ID_Historial),
constraint fk_fp foreign key(ID_Perro) references Perro (ID)
);
insert into Perro values (1, "Negra", 16/12/2021, "Masculino", 23002778);
insert into Perro values (2, "Pupy", 10/02/2022, "Femenino", 22025706);
insert into Dueno values (1, "Juan", "Perez", 3546452317, "salta 235");
insert into Dueno values (2, "Adriana", "Sanchez", 3546422017, "roma 22");

insert into Historial values (1, 12/08/2022, 1, "cirugia miembro derecho", 3000);
insert into Historial values (2, 13/08/2022, 2, "limpieza cuerpo", 1500);



