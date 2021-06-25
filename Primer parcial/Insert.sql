Insert into Nacionalidad Values(1, 'Ecuatoriano');

Insert into Empleado Values(1, 1311808040, 'EDUARDO','CASILLAS', 'M', 1, 'Calle 8', '0999999999' , '25-03-1995' );
Insert into Empleado Values(2, 1317216556, 'SANTIAGO','LOPEZ', 'M', 1, 'Calle 10', '0999999999' , '20-12-1985' );
Insert into Empleado Values(3, 1314789532, 'MARIA','FLORES', 'F', 1, 'Los esteros', '0999999999' , '05-04-1992' );
Insert into Empleado Values(4, 1784523989, 'ANTONIO','RIVERA', 'M', 1, 'Calle 13', '0999999999' , '25-06-1990' );
Insert into Empleado Values(5, 1781254872, 'JOSE','RIVERA', 'M', 1, 'Calle 9', '0999999999' , '22-07-1980' );

Insert into Tipo_Contrato Values(1, 'Indefinido');
Insert into Tipo_Contrato Values(2, 'Temporal');

Insert into Cargo Values(1, 'Tecnico');
Insert into Cargo Values(2, 'Cajero');

Insert into Contrato Values(1, 1, 1, 1,'06-02-2019',null);
Insert into Contrato Values(2, 2, 1, 2,'14-06-2018',null);
Insert into Contrato Values(3, 3, 2, 1,'20-04-2021','30-06-2021');
Insert into Contrato Values(4, 4, 2, 1,'10-02-2021','30-07-2021');
Insert into Contrato Values(5, 5, 1, 2,'20-01-2017',null);

Insert into Categoria Values(1,'Monitor');
Insert into Categoria Values(2,'Procesador');
Insert into Categoria Values(3,'Mainboard');
Insert into Categoria Values(4,'Ram');
Insert into Categoria Values(5,'Teclado');
Insert into Categoria Values(6,'Mouse');
Insert into Categoria Values(7,'Case');
Insert into Categoria Values(8,'PSU');
Insert into Categoria Values(9,'Disco Duro');


Insert into Marca Values(1,'Asus');
Insert into Marca Values(2,'Wester Digital');
Insert into Marca Values(3,'Genius');
Insert into Marca Values(4,'AMD');
Insert into Marca Values(5,'Intel');
Insert into Marca Values(6,'Gigabyte');
Insert into Marca Values(7,'Kingston');
Insert into Marca Values(8,'Corsair');
Insert into Marca Values(9,'LG');

Insert into Articulo Values(1,'Monitor 19 pulgadas', 9,1, 120.00, 2 );
Insert into Articulo Values(2,'i7-11700K', 5,2, 450.00, 5 );
Insert into Articulo Values(3,'Gigabyte h410m s2h', 6,3, 90.00, 3 );
Insert into Articulo Values(4,'Corsair 8Gb 3200mhz', 8,4, 70.00, 3 );
Insert into Articulo Values(5,'Mouse genius dx-110', 3,5, 10.00, 3 );
Insert into Articulo Values(6,'Teclado genius km-8200', 3,6, 12.00, 4 );
Insert into Articulo Values(7,'Case corsair spec 05', 8,7, 80.00, 2 );
Insert into Articulo Values(8,'Corsair CX Series CX650M', 8,8, 90.00, 2 );
Insert into Articulo Values(9,'Disco Duro Western Digital 1TB', 2,9, 70.00, 4 );
Insert into Articulo Values(10,'Ryzen 3 3400G', 4,2, 250.00, 2 );
Insert into Articulo Values(11,'Asus b450F', 1,3, 150.00, 3 );
Insert into Articulo Values(12,'Disco Duro Western Digital 2TB', 2,9, 120.00, 4 );

Insert into Proveedor Values(1, '0913487367001','TecnoMega','Ruiz de Castilla S/N',055785267);
Insert into Proveedor Values(2, '0454544545001','INTCOMEX','Ciudadela Adace Calle B N. 206',053705200);


Insert into Pedido (Pedido_ID,Pedido_ProveedorID) values(1,2);
Insert into Pedido_Detalle values (1,1,9,3,50.00,150.00);
Insert into Pedido_Detalle values (2,1,3,2,70.00,140.00);
update Pedido set Pedido_Subtotal= (select SUM(PD_Subtotal) from Pedido_Detalle where PD_PedidoID=1 ) where Pedido_ID=1;
update Pedido set Pedido_Iva=Pedido_Subtotal*0.12 where Pedido_ID=1;
update Pedido set Pedido_Total=Pedido_Subtotal+Pedido_Iva where Pedido_ID=1;
update Articulo set Articulo_Stock= Articulo_Stock+ 3 where Articulo_ID=9;
update Articulo set Articulo_Stock= Articulo_Stock+ 2 where Articulo_ID=3;

Insert into Cliente values (1,'1310547895','Jose','Sanchez','La Aurora','0952575462') ;
Insert into Cliente values (2,'0320154555','Laura','Bravo','La Aurora','0987542321') ;

Insert into Equipo values (1, 'SE545242445', 12);
Insert into Detalle_Equipo values (1, 1, 1);
Insert into Detalle_Equipo values (2, 1, 2);
Insert into Detalle_Equipo values (3, 1, 3);
Insert into Detalle_Equipo values (4, 1, 4);
Insert into Detalle_Equipo values (5, 1, 5);
Insert into Detalle_Equipo values (6, 1, 6);
Insert into Detalle_Equipo values (7, 1, 7);
Insert into Detalle_Equipo values (8, 1, 8);
Insert into Detalle_Equipo values (9, 1, 9);

Insert into Equipo values (2, 'SE521227714', 6);
Insert into Detalle_Equipo values (10, 2, 11);
Insert into Detalle_Equipo values (11, 2, 10);
Insert into Detalle_Equipo values (12, 2, 12);
Insert into Detalle_Equipo values (13, 2, 7);
Insert into Detalle_Equipo values (14, 2, 4);


Insert into Equipo values (3, 'SE323121255', 12);
Insert into Detalle_Equipo values (15, 3, 2);
Insert into Detalle_Equipo values (16, 3, 3);
Insert into Detalle_Equipo values (17, 3, 7);
Insert into Detalle_Equipo values (18, 3, 8);
Insert into Detalle_Equipo values (19, 3, 4);



Insert into Factura(Factura_ID,Factura_Numero,Factura_Fecha,Factura_VendedorID,Factura_ClienteID) values(1,00001, '20-06-2021' ,2,1  );
Insert into Factura_Detalle values (1,1,1,0);
Update Factura_Detalle set FD_Subtotal=(select SUM(Articulo.Articulo_Precio) from Articulo 
inner join Detalle_Equipo on Detalle_Equipo.DE_ArticuloID = Articulo.Articulo_ID 								 
where Detalle_Equipo.DE_EquipoID =1) where FD_ID=1 ;
update Factura set Factura_Subtotal= (Select sum(FD_Subtotal) from Factura_Detalle where FD_FacturaID=1) where Factura_ID=1 ;
update Factura set Factura_Iva= Factura_Subtotal*0.12 where Factura_ID=1 ;
update Factura set Factura_Total= Factura_Iva+Factura_Subtotal where Factura_ID=1 ;

Insert into Factura(Factura_ID,Factura_Numero,Factura_Fecha,Factura_VendedorID,Factura_ClienteID) values(2,00002, '22-06-2021' ,5,2  );
Insert into Factura_Detalle values (2,2,2,0);
Insert into Factura_Detalle values (3,2,3,0);
Update Factura_Detalle set FD_Subtotal=(select SUM(Articulo.Articulo_Precio) from Articulo 
inner join Detalle_Equipo on Detalle_Equipo.DE_ArticuloID = Articulo.Articulo_ID 								 
where Detalle_Equipo.DE_EquipoID =2) where FD_ID=2 ;
Update Factura_Detalle set FD_Subtotal=(select SUM(Articulo.Articulo_Precio) from Articulo 
inner join Detalle_Equipo on Detalle_Equipo.DE_ArticuloID = Articulo.Articulo_ID 								 
where Detalle_Equipo.DE_EquipoID =3) where FD_ID=3 ;
update Factura set Factura_Subtotal= (Select sum(FD_Subtotal) from Factura_Detalle where FD_FacturaID=2) where Factura_ID=2 ;
update Factura set Factura_Iva= Factura_Subtotal*0.12 where Factura_ID=2 ;
update Factura set Factura_Total= Factura_Iva+Factura_Subtotal where Factura_ID=2 ;


Insert into Orden_Mantenimiento(Orden_ID,Orden_ClienteID,Orden_EmpleadoReceptor,Orden_TecnicoID,Orden_FchIngreso,Orden_EstadoOrden)
values(1,2,3,1,'19-06-2021','En progreso');
Insert into Mantenimiento(Mantenimiento_ID,Mantenimiento_OrdenID,Mantenimiento_SerialEquipo,Mantenimiento_Condicion,Mantenimiento_OrigenEquipo) 
values(1,1,'S0154456','Disco duro defectuoso y agregar 8gb de ram','false');
Insert into Articulo_Mantenimiento values (1,1,9);
Insert into Articulo_Mantenimiento values (2,1,4);
Update Mantenimiento set Mantenimiento_Costo=(Select sum(Articulo.Articulo_Precio) from Articulo
inner join Articulo_Mantenimiento on AM_ArticuloID=Articulo_ID where AM_MantenimientoID=1)where Mantenimiento_ID =1;
Update Orden_Mantenimiento set Orden_FchSalida= '25-06-2021' where Orden_ID=1;
Update Orden_Mantenimiento set Orden_EstadoOrden= 'Finalizada' where Orden_ID=1;
Update Orden_Mantenimiento set Orden_Subtotal= (Select sum(Mantenimiento_Costo) from Mantenimiento where Mantenimiento_OrdenID= 1) where Orden_ID=1;
Update Orden_Mantenimiento set Orden_Iva= Orden_Subtotal*0.12 where Orden_ID=1;
Update Orden_Mantenimiento set Orden_Total= Orden_Subtotal+Orden_Iva where Orden_ID=1;

Insert into Orden_Mantenimiento(Orden_ID,Orden_ClienteID,Orden_EmpleadoReceptor,Orden_TecnicoID,Orden_FchIngreso,Orden_EstadoOrden)
values(2,1,2,4,'20-06-2021','En progreso');
Insert into Mantenimiento(Mantenimiento_ID,Mantenimiento_OrdenID,Mantenimiento_SerialEquipo,Mantenimiento_Condicion,Mantenimiento_OrigenEquipo) 
values(2,2,'S0159545','Disco duro defectuoso','true');
Insert into Articulo_Mantenimiento values (3,2,9);
Update Mantenimiento set Mantenimiento_Costo=(Select sum(Articulo.Articulo_Precio) from Articulo
inner join Articulo_Mantenimiento on AM_ArticuloID = Articulo_ID where AM_MantenimientoID=2 )where Mantenimiento_ID =2;
Update Orden_Mantenimiento set Orden_FchSalida= '24-06-2021' where Orden_ID=2;
Update Orden_Mantenimiento set Orden_EstadoOrden= 'Finalizada' where Orden_ID=2;
Update Orden_Mantenimiento set Orden_Subtotal= (Select sum(Mantenimiento_Costo) from Mantenimiento where Mantenimiento_OrdenID= 2) where Orden_ID=2;
Update Orden_Mantenimiento set Orden_Iva= Orden_Subtotal*0.12 where Orden_ID=2;
Update Orden_Mantenimiento set Orden_Total= Orden_Subtotal+Orden_Iva where Orden_ID=2;

Insert into Orden_Mantenimiento(Orden_ID,Orden_ClienteID,Orden_EmpleadoReceptor,Orden_TecnicoID,Orden_FchIngreso,Orden_EstadoOrden)
values(3,2,5,4,'22-06-2021','En progreso');
Insert into Mantenimiento(Mantenimiento_ID,Mantenimiento_OrdenID,Mantenimiento_SerialEquipo,Mantenimiento_Condicion,Mantenimiento_OrigenEquipo) 
values(3,3,'S0154552','Cambio de mainboard, procesador y disco duro adicional','true');
Insert into Articulo_Mantenimiento values (4,3,10);
Insert into Articulo_Mantenimiento values (5,3,11);
Insert into Articulo_Mantenimiento values (6,3,9);
Update Mantenimiento set Mantenimiento_Costo=(Select sum(Articulo.Articulo_Precio) from Articulo
inner join Articulo_Mantenimiento on AM_ArticuloID = Articulo_ID where AM_MantenimientoID=3 )where Mantenimiento_ID =3;
Update Orden_Mantenimiento set Orden_FchSalida= '24-06-2021' where Orden_ID=3;
Update Orden_Mantenimiento set Orden_EstadoOrden= 'Finalizada' where Orden_ID=3;
Update Orden_Mantenimiento set Orden_Subtotal= (Select sum(Mantenimiento_Costo) from Mantenimiento where Mantenimiento_OrdenID= 3) where Orden_ID=3;
Update Orden_Mantenimiento set Orden_Iva= Orden_Subtotal*0.12 where Orden_ID=3;
Update Orden_Mantenimiento set Orden_Total= Orden_Subtotal+Orden_Iva where Orden_ID=3;
