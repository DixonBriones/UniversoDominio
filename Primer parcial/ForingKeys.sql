Alter table Empleado
	add CONSTRAINT fk_NacionalidadID FOREIGN KEY (Empleado_NacionalidadID)
        REFERENCES Nacionalidad (Nacionalidad_ID)
		on delete restrict on update cascade;
	
Alter table Contrato
	add CONSTRAINT fk_EmpleadoID FOREIGN KEY (Contrato_EmpleadoID)
        REFERENCES Empleado (Empleado_ID)
		on delete restrict on update cascade;
		
Alter table Contrato
	add	CONSTRAINT fk_TCID FOREIGN KEY (Contrato_TCID)
        REFERENCES Tipo_Contrato (TC_ID)
		on delete restrict on update cascade;
		
Alter table Contrato
	add	CONSTRAINT fk_CargoID FOREIGN KEY (Contrato_CargoID)
        REFERENCES Cargo (Cargo_ID)
		on delete restrict on update cascade;
	
Alter table Articulo
	add CONSTRAINT fk_CategoriaID FOREIGN KEY (Articulo_CategoriaID)
        REFERENCES Categoria (Categoria_ID)
	    on delete restrict on update cascade;

Alter table Articulo
	add CONSTRAINT fk_MarcaID FOREIGN KEY (Articulo_MarcaID)
        REFERENCES Marca (Marca_ID)
	    on delete restrict on update cascade;

Alter table Pedido
	add CONSTRAINT fk_ProveedorID FOREIGN KEY (Pedido_ProveedorID)
        REFERENCES Proveedor (Proveedor_ID)
	    on delete restrict on update cascade;
		
Alter table Pedido_Detalle
	add CONSTRAINT fk_PedidoID FOREIGN KEY (PD_PedidoID)
        REFERENCES Pedido (Pedido_ID)
	    on delete restrict on update cascade;

Alter table Pedido_Detalle
	add CONSTRAINT fk_ArticuloID FOREIGN KEY (PD_ArticuloID)
        REFERENCES Articulo (Articulo_ID)
	    on delete restrict on update cascade;
		
Alter table Detalle_Equipo
	add CONSTRAINT fk_DEEquipoID FOREIGN KEY (DE_EquipoID)
        REFERENCES Equipo (Equipo_ID)
	    on delete restrict on update cascade;
		
Alter table Detalle_Equipo
	add CONSTRAINT fk_DEArticuloID FOREIGN KEY (DE_ArticuloID)
        REFERENCES Articulo (Articulo_ID)
	    on delete restrict on update cascade;

Alter table Factura
	add CONSTRAINT fk_VendedorID FOREIGN KEY (Factura_VendedorID)
        REFERENCES Empleado (Empleado_ID)
	    on delete restrict on update cascade;

Alter table Factura
	add CONSTRAINT fk_ClienteID FOREIGN KEY (Factura_ClienteID)
        REFERENCES Cliente (Cliente_ID)
	    on delete restrict on update cascade;
		
Alter table Factura_Detalle
	add CONSTRAINT fk_FacturaID FOREIGN KEY (FD_FacturaID)
        REFERENCES Factura (Factura_ID)
	    on delete restrict on update cascade;
		
Alter table Factura_Detalle
	add CONSTRAINT fk_EquipoID FOREIGN KEY (FD_EquipoID)
        REFERENCES Equipo (Equipo_ID)
	    on delete restrict on update cascade;
		
Alter table Orden_Mantenimiento
	add CONSTRAINT fk_OrdenClienteID FOREIGN KEY (Orden_ClienteID)
        REFERENCES Cliente (Cliente_ID)
	    on delete restrict on update cascade;
		
Alter table Orden_Mantenimiento
	add CONSTRAINT fk_EmpleadoReceptor FOREIGN KEY (Orden_EmpleadoReceptor)
        REFERENCES Empleado (Empleado_ID)
	    on delete restrict on update cascade;
		
Alter table Orden_Mantenimiento
	add CONSTRAINT fk_TecnicoID FOREIGN KEY (Orden_TecnicoID)
        REFERENCES Empleado (Empleado_ID)
	    on delete restrict on update cascade;
		
Alter table Mantenimiento
	add CONSTRAINT fk_OrdenID FOREIGN KEY (Mantenimiento_OrdenID)
        REFERENCES Orden_Mantenimiento (Orden_ID)
	    on delete restrict on update cascade;
		
Alter table Articulo_Mantenimiento
	add CONSTRAINT fk_AMantenimientoID FOREIGN KEY (AM_MantenimientoID)
        REFERENCES Mantenimiento (Mantenimiento_ID)
	    on delete restrict on update cascade;
		
Alter table Articulo_Mantenimiento
	add CONSTRAINT fk_MArticuloID FOREIGN KEY (AM_ArticuloID)
        REFERENCES Articulo (Articulo_ID)
	    on delete restrict on update cascade;