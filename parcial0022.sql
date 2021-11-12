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
idingreso int primary key identity not null,
idmascota int foreign key (idmascota) references mascota(idmascota) not null,
idveterinario int foreign key (idveterinario) references veterinario(idveterinario) not null,
Motivo varchar(max) not null,
Fechadeingreso varchar(max) not null,
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


insert into ingresos(idmascota, idveterinario, Motivo, Fechadeingreso,Observaciones)
values 
(3, 1,'fiebre','2019-02-02','mal estado'),
(12, 2,'infeccion vocal','2019-06-20','mal estado'),
(3, 3,'diarrea','2019-02-23','mal estado'),
(4, 2,'fiebre','2019-02-12','mal estado'),
(5, 1,'operacion','2019-02-31','mal estado'),
(6, 1,'fiebre','2019-03-22','mal estado'),
(7, 4,'pies roto','2019-02-12','mal estado'),
(8, 3,'fiebre','2019-02-11','mal estado'),
(9, 2,'fiebre','2019-02-10','mal estado'),
(10, 1,'infecion ojos','2019-02-8','mal estado'),
(3, 4,'diarrea','2019-02-7','mal estado'),
(12, 3,'infeccion','2019-02-6','mal estado'),
(4, 2,'fiebre','2019-03-5','mal estado'),
(5, 1,'fiebre','2019-04-6','mal estado');






