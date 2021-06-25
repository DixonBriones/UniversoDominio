/*==============================================================*/
/* Table: Articulo                                              */
/*==============================================================*/
create table Articulo (
   Articulo_ID          int                  not null,
   Articulo_Nombre      varchar(50)          null,
   Articulo_MarcaID     int                  null,
   Articulo_CategoriaID int                  null,
   Articulo_Precio      decimal(7,2)         null,
   Articulo_Stock       int                  null,
   constraint PK_ARTICULO primary key (Articulo_ID)
);

/*==============================================================*/
/* Table: Articulo_Mantenimiento                                */
/*==============================================================*/
create table Articulo_Mantenimiento (
   AM_ID                int                  not null,
   AM_MantenimientoID   int                  null,
   AM_ArticuloID        int                  null,
   constraint PK_ARTICULO_MANTENIMIENTO primary key (AM_ID)
);

/*==============================================================*/
/* Table: Cargo                                                 */
/*==============================================================*/
create table Cargo (
   Cargo_ID             int                  not null,
   Cargo_Nombre         varchar(20)          null,
   constraint PK_CARGO primary key (Cargo_ID)
);

/*==============================================================*/
/* Table: Categoria                                             */
/*==============================================================*/
create table Categoria (
   Categoria_ID         int                  not null,
   Categoria_Nombre     varchar(20)          null,
   constraint PK_CATEGORIA primary key (Categoria_ID)
);

/*==============================================================*/
/* Table: Cliente                                               */
/*==============================================================*/
create table Cliente (
   Cliente_ID           int                  not null,
   Cliente_CI           varchar(10)          null,
   Cliente_Nombre       varchar(10)          null,
   Cliente_Apellido     varchar(30)          null,
   Cliente_Direccion    varchar(40)          null,
   Cliente_Telefono     varchar(10)          null,
   constraint PK_CLIENTE primary key (Cliente_ID)
);

/*==============================================================*/
/* Table: Contrato                                              */
/*==============================================================*/
create table Contrato (
   Contrato_ID          int                  not null,
   Contrato_EmpleadoID  int                  null,
   Contrato_TCID        int                  null,
   Contrato_CargoID     int                  null,
   constraint PK_CONTRATO primary key (Contrato_ID)
);

/*==============================================================*/
/* Table: Detalle_Equipo                                        */
/*==============================================================*/
create table Detalle_Equipo (
   DE_ID                int                  not null,
   DE_EquipoID          int                  null,
   DE_ArticuloID        int                  null,
   constraint PK_DETALLE_EQUIPO primary key (DE_ID)
);

/*==============================================================*/
/* Table: Empleado                                              */
/*==============================================================*/
create table Empleado (
   Empleado_ID          int                  not null,
   Empleado_CI          varchar(10)          null,
   Empleado_Nombre      varchar(20)          null,
   Empleado_Apellido    varchar(30)          null,
   Empleado_Genero      varchar(1)           null,
   Empleado_NacionalidadID int                  null,
   Empleado_Direccion   varchar(40)          null,
   Empleado_Telefono    varchar(10)          null,
   Empleado_FchNacimiento date                 null,
   constraint PK_EMPLEADO primary key (Empleado_ID)
);

/*==============================================================*/
/* Table: Equipo                                                */
/*==============================================================*/
create table Equipo (
   Equipo_ID            int                  not null,
   Equipo_Serial        varchar(20)          null,
   Equipo_MesesGarantia int                  null,
   constraint PK_EQUIPO primary key (Equipo_ID)
);

/*==============================================================*/
/* Table: Factura                                               */
/*==============================================================*/
create table Factura (
   Factura_ID           int                  not null,
   Factura_Numero       int                  null,
   Factura_Fecha        date                 null,
   Factura_VendedorID   int                  null,
   Factura_ClienteID    int                  null,
   Factura_Subtotal     decimal(7,2)         null,
   Factura_Iva          decimal(7,2)         null,
   Factura_Total        decimal(7,2)         null,
   constraint PK_FACTURA primary key (Factura_ID)
);

/*==============================================================*/
/* Table: Factura_Detalle                                       */
/*==============================================================*/
create table Factura_Detalle (
   FD_ID                int                  not null,
   FD_FacturaID         int                  null,
   FD_EquipoID          int                  null,
   FD_Subtotal          decimal(7,2)         null,
   constraint PK_FACTURA_DETALLE primary key (FD_ID)
);

/*==============================================================*/
/* Table: Mantenimiento                                         */
/*==============================================================*/
create table Mantenimiento (
   Mantenimiento_ID     int                  not null,
   Mantenimiento_OrdenID int                  null,
   Mantenimiento_SerialEquipo varchar(20)          null,
   Mantenimiento_Condicion varchar(100)         null,
   Mantenimiento_OrigenEquipo boolean              null,
   Mantenimiento_Costo  decimal(7,2)         null,
   constraint PK_MANTENIMIENTO primary key (Mantenimiento_ID)
);

/*==============================================================*/
/* Table: Marca                                                 */
/*==============================================================*/
create table Marca (
   Marca_ID             int                  not null,
   Marca_Nombre         varchar(20)          null,
   constraint PK_MARCA primary key (Marca_ID)
);

/*==============================================================*/
/* Table: Nacionalidad                                          */
/*==============================================================*/
create table Nacionalidad (
   Nacionalidad_ID      int                  not null,
   Nacionalidad_Nombre  varchar(25)          null,
   constraint PK_NACIONALIDAD primary key (Nacionalidad_ID)
);

/*==============================================================*/
/* Table: Orden_Mantenimiento                                   */
/*==============================================================*/
create table Orden_Mantenimiento (
   Orden_ID             int                  not null,
   Orden_ClienteID      int                  null,
   Orden_EmpleadoReceptor int                  null,
   Orden_TecnicoID      int                  null,
   Orden_FchIngreso     date                 null,
   Orden_FchSalida      date                 null,
   Orden_EstadoOrden    varchar(20)          null,
   Orden_Subtotal       decimal(7,2)         null,
   Orden_Iva            decimal(7,2)         null,
   Orden_Total          decimal(7,2)         null,
   constraint PK_ORDEN_MANTENIMIENTO primary key (Orden_ID)
);

/*==============================================================*/
/* Table: Pedido                                                */
/*==============================================================*/
create table Pedido (
   Pedido_ID            int                  not null,
   Proveedor_ID         int                  null,
   Pedido_Subtotal      decimal(7,2)         null,
   Pedido_Iva           decimal(7,2)         null,
   Pedido_Total         decimal(7,2)         null,
   constraint PK_PEDIDO primary key (Pedido_ID)
);

/*==============================================================*/
/* Table: Pedido_Detalle                                        */
/*==============================================================*/
create table Pedido_Detalle (
   PD_ID                int                  not null,
   PD_PedidoID          int                  null,
   PD_ArticuloID        int                  null,
   PD_Unidades          int                  null,
   PD_PrecioUnitario    decimal(7,2)         null,
   PD_Subtotal          decimal(7,2)         null,
   constraint PK_PEDIDO_DETALLE primary key (PD_ID)
);

/*==============================================================*/
/* Table: Proveedor                                             */
/*==============================================================*/
create table Proveedor (
   Proveedor_ID         int                  not null,
   Proveedor_RUC        varchar(13)          null,
   Proveedor_Nombre     varchar(30)          null,
   Proveedor_Direccion  varchar(40)          null,
   Proveedor_Telefono   varchar(10)          null,
   constraint PK_PROVEEDOR primary key (Proveedor_ID)
);

/*==============================================================*/
/* Table: Tipo_Contrato                                         */
/*==============================================================*/
create table Tipo_Contrato (
   TC_ID                int                  not null,
   TC_Nombre            varchar(20)          null,
   constraint PK_TIPO_CONTRATO primary key (TC_ID)
);
