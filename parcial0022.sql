create database veterinaria
use veterinaria



create table dueño_mascota(
iddueño int identity primary key not null,
Nombre varchar(max) not null,
Apellidos varchar(max) not null,
Dirección varchar(max) not null,
Departamento varchar(max) not null,
Municipio varchar(max) not null,
Código_postal int not null,
);
create table mascota(
idmascota int identity primary key not null,
iddueño int foreign key (iddueño) references dueño_mascota(iddueño) not null,
Nombre varchar(max) not null,
Raza varchar(max) not null,
Peso int not null,
Tipo_de_mascota varchar(max) not null,
Observaciones varchar(max) not null,
);

create table veterinario(
idveterinario int primary key identity  not null,
Nombre varchar(max) not null,
Apellidos varchar(max) not null,
Cargo varchar(max) not null,
);
create table ingresos(
idmascota int foreign key (idmascota) references mascota(idmascota) not null,
idveterinario int foreign key (idveterinario) references veterinario(idveterinario) not null,
Motivo varchar(max) not null,
Fechadeingreso date not null,
Observaciones varchar(max) not null,
);

create table telefonos(
idtelefono int primary key identity  not null,
iddueño int foreign key (iddueño) references dueño_mascota(iddueño) not null,
idmascota int foreign key (idmascota) references mascota(idmascota) not null,
);

insert into veterinario(Nombre, Apellidos, Cargo)
values
('juan', 'lemus','adontologo'),
('cristian', 'alas','cirugia'),
('joel', 'lenche','emergencia'),
('manuel', 'chete','adontologo');


insert into mascota(iddueño, Nombre, Raza, Peso, Tipo_de_mascota, Observaciones)
values
(1,'pepi', 'chiguagua',2, 'pequeña', 'se venia muriendo'),
(2,'mailo', 'grannades',34, 'grande', 'infeccion'),
(3,'lulu', 'chiguagua',23, 'pequeña', 'falta calcio'),
(3,'nala', 'pitbull',56, 'grande', 'embarazada'),
(2,'betoven', 'dalmata',34, 'grande', 'pulgas'),
(3,'boby', 'grandanes',65, 'grande', 'drogado'),
(1,'terry', 'medio oriental',16, 'pequeñ0', 'orina amarillo'),
(2,'rayito', 'pitbull',23, 'pequeñ0', 'se venia muriendo'),
(3,'nacho', 'lobo',34, 'pequeña', 'diente roto'),
(3,'pepita', 'chiguagua',4, 'pequeña', 'embarazada');






