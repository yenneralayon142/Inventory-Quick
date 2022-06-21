create database Inventory;
use Inventory;


create table pedido 
(
	pedido_id int not null,
	fecha date not null,
	nombre varchar (64) not null,
	estado char (1) not null,
	primary key (pedido_id)
);

create table detallepedido
(
	detallepedido_id int not null,
	cantidad int not null,
	precio_unitario int not null,
	producto_productoid int not null,
	pedido_pedidoid int not null,
	primary key (detallepedido_id,producto_productoid,pedido_pedidoid)
);	

create table subcategoria
(
	subcategoria_id int not null,
	nombre varchar (25) not null,
	estado int not null,
	categoria_categoriaid int not null,
	primary key (subcategoria_id,categoria_categoriaid)
);	

create table categoria 
(
	categoria_id int not null,
	estado int not null,
	nombre varchar (15) not null,
	primary key (categoria_id)
);	

create table precio
(
	precio_id int not null,
	fecha_ingreso date not null,
	precio_compra boolean not null,
	descuento boolean not null,
	precio_ventainicial boolean not null,
	precio_ventafinal boolean not null,
	producto_productoid int not null,
	primary key (precio_id,producto_productoid)

);	

create table producto 
(
	producto_id int not null,
	nombre varchar (25) not null,
	descripcion varchar (45) not null,
	estado int not null,
	subcategoria_subcategoriaid int not null,
	marca_marcaid int not null,
	primary key (producto_id,subcategoria_subcategoriaid,marca_marcaid)
);	

create table tiposdepago
(
	tipospago_id int not null,
	nombre varchar (25) not null,
	estado int not null,
	pedido_pedidoid int not null,
	primary key (tipospago_id,pedido_pedidoid)
);	

create table unidadmedida
(
	unidadmedida_id int not null,
	nombre varchar (25) not null,
	estado int not null,
	producto_productoid int not null,
	primary key (unidadmedida_id,producto_productoid)
);	

create table transaccion 
(
	transaccion_id int not null,
	cantidadproducto boolean not null,
	fechatransaccion date not null,
	otrosdetalles date null,
	producto_productoid int not null,
	tiposdetransaccion_tiposdetransaccionid int not null,
	primary key (transaccion_id,producto_productoid,tiposdetransaccion_tiposdetransaccionid)
);	

create table tiposdetransaccion 
(
	tipotransaccion_id int not null,
	descripcion varchar (45) not null,
	primary key (tipotransaccion_id)
);	

create table imagenprodcuto
(
	imagenprodcuto_id int not null,
	foto blob not null,
	estado int not null,
	producto_productoid int not null,
	primary key (imagenprodcuto_id,producto_productoid)
);	

create table stock 
(
	stock_id int not null,
	fechaingresostock date not null,
	cantidadstockideal int not null,
	cantidadstockalarma int not null,
	cantidadstockreal int not null,
	primary key (stock_id)
);

create table marca 
(
	marca_id int not null,
	nombre varchar (25) not null,
	estado int not null,
	primary key (marca_id)
);	

create table lugar 
(
	lugar_id int not null,
	fechaingreso date not null,
	direccion varchar (45) not null,
	correo varchar (45) not null,
	ciudad_ciudadid int not null,
	primary key (lugar_id,ciudad_ciudadid)
);	

create table ciudad 
(
	ciudad_id int not null,
	nombre varchar (25) not null,
	primary key (ciudad_id)
);

create table aspnetuser
(
	aspnetuser_id int not null,
	nombreNetuser_id int not null,
	primer_nombre varchar (45) not null,
	segundo_nombre varchar (45)  null,
	primer_apellido varchar (45) not null,
	segundo_apellido varchar (45)  null,
	fecha_nacimiento date not null,
	direccion varchar(45) null,
    telefono varchar (15) not null,
    correo varchar (20) not null,
    correo_confirmado char (1) not null,
    contraseña varchar (20) not null,
    sello_seguridad varchar(45) not null,
    fecha_cierre date not null,
    fecha_abierta date not null,
    acceso_denegado varchar (45) not null,
    primary key (ASPNETUSER_ID)
);	

create table turno
(
	turno_id int not null,
	fecha_turno date not null,
	hora_ingreso date not null,
	estado int not null,
	aspnetuser_id int not null,
	primary key (turno_id)
);

create table sueldo 
(
	sueldo_id int not null,
	fecha_contrato date not null,
	fecha_finalizacion date not null,
	sueldo_mensual decimal not null,
	objeto_contrato varchar (45) not null,
	salario_total decimal not null,
    estado int not null,
    empleado_aspnetuser_aspnetuser_id int not null,
    primary key (sueldo_id)

);

create table aspnetuserclaim
(
	aspnetuserclaim_id int not null,
	claimtype varchar (45) not null,
	claimvalue varchar (45) not null,
	aspnetuser_aspnetuser_id int not null,
	primary key (aspnetuserclaim_id)
);	

create table userlogin
(
	login_id int not null,
	loginprovider varchar (45) not null,
	providerkey varchar(45) not null,
	aspnetuser_aspnetuser_id int not null,
	primary key (login_id)
);	

create table aspnetuser_role
(
	aspnetrole_id int not null,
	primer_nombre varchar(45) not null,
	segundo_nombre varchar (45) null,
	primer_apellido varchar (45) not null,
	segundo_apellido varchar (45) null,
	primary key (aspnetrole_id)

);	

create table aspnetuser_aspnetuserrole
(
    aspnetuser_aspnetuser_id int not null,
    aspnetuserrole_aspnetrole_id int not null,
    primary key(aspnetuser_aspnetuser_id,aspnetuserrole_aspnetrole_id)

);		