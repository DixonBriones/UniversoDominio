Create table Nacionalidad (
Nacionalidad_ID int primary key,
Nacionalidad_Nombre varchar(25)
);
Create table Empleado (
Empleado_ID int primary key,
Empleado_CI varchar(10),
Empleado_Nombre varchar(20),
Empleado_Apellido varchar(30),
Empleado_Genero varchar(1),
Empleado_NacionalidadID int,
Empleado_Direccion varchar(40),
Empleado_Telefono varchar(10),
Empleado_FchNacimiento date
);

Create table Tipo_Contrato (
TC_ID int primary key,
TC_Nombre varchar(20)
);

Create table Cargo (
Cargo_ID int primary key,
Cargo_Nombre varchar(20)
);

Create table Contrato (
Contrato_ID int primary key,
Contrato_EmpleadoID int,
Contrato_TCID int,
Contrato_CargoID int
);

Create table Categoria (
Categoria_ID int primary key,
Categoria_Nombre varchar(20)
);



Create table Marca (
Marca_ID int primary key,
Marca_Nombre varchar(20)
);


Create table Articulo (
Articulo_ID int primary key,
Articulo_Nombre varchar(50),
Articulo_MarcaID int,
Articulo_CategoriaID int,
Articulo_Precio decimal(7,2),
Articulo_Stock int
);


Create table Proveedor (
Proveedor_ID int primary key,
Proveedor_RUC varchar(13),
Proveedor_Nombre varchar(30),
Proveedor_Direccion varchar(40),
Proveedor_Telefono varchar(10)
);


Create table Pedido (
Pedido_ID int primary key,
Pedido_ProveedorID int,
Pedido_Subtotal decimal(7,2),
Pedido_Iva decimal(7,2),
Pedido_Total decimal(7,2)
);

Create table Pedido_Detalle (
PD_ID int primary key,
PD_PedidoID int,
PD_ArticuloID int,
PD_Unidades int,
PD_PrecioUnitario decimal(7,2),
PD_Subtotal decimal(7,2)
);


Create table Cliente (
Cliente_ID int primary key,
Cliente_CI varchar(10),
Cliente_Nombre varchar(10),
Cliente_Apellido varchar(30),
Cliente_Direccion varchar(40),
Cliente_Telefono varchar(10)
);

Create table Equipo (
Equipo_ID int primary key,
Equipo_Serial varchar(20),
Equipo_MesesGarantia int
);



Create table Detalle_Equipo (
DE_ID int primary key,
DE_EquipoID int,
DE_ArticuloID int
);


Create table Factura (
Factura_ID int primary key,
Factura_Numero int,
Factura_Fecha date,
Factura_VendedorID int,
Factura_ClienteID int,
Factura_Subtotal decimal(7,2),
Factura_Iva decimal(7,2),
Factura_Total decimal(7,2)
);

Create table Factura_Detalle (
FD_ID int primary key,
FD_FacturaID int,
FD_EquipoID int,
FD_Subtotal decimal(7,2)
);


Create table Orden_Mantenimiento (
Orden_ID int primary key,
Orden_ClienteID int,
Orden_EmpleadoReceptor int,
Orden_TecnicoID int,
Orden_FchIngreso date,
Orden_FchSalida date,
Orden_EstadoOrden varchar(20),
Orden_Subtotal decimal(7,2),
Orden_Iva decimal(7,2),
Orden_Total decimal(7,2)
);


Create table Mantenimiento (
Mantenimiento_ID int primary key,
Mantenimiento_OrdenID int,
Mantenimiento_SerialEquipo varchar(20),
Mantenimiento_Condicion varchar(100),
Mantenimiento_OrigenEquipo boolean,
Mantenimiento_Costo decimal(7,2)
);

Create table Articulo_Mantenimiento (
AM_ID int primary key,
AM_MantenimientoID int,
AM_ArticuloID int
);

