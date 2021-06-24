--Consulta de la cantidad de artículos que se ha destinado para mantenimiento de equipos por cada marca.

select Marca.Marca_Nombre as Marca, 
count (Articulo_Mantenimiento.AM_ArticuloID) as cantidad
from Marca
inner join Articulo on  Marca.Marca_ID= Articulo.Articulo_MarcaID
inner join Articulo_Mantenimiento on Articulo_Mantenimiento.AM_ArticuloID =Articulo.Articulo_ID
group by Marca


--Consulta del técnico que mas ha representado ingreso por marca
select nombre,marca,generado
from(
select Empleado.Empleado_Nombre || ' ' || Empleado.Empleado_Apellido  as Nombre,
Marca.Marca_Nombre as Marca,
sum(Articulo.Articulo_Precio) as Generado,
RANK() OVER (PARTITION BY Marca.Marca_Nombre 
			ORDER BY sum(Articulo.Articulo_Precio) desc) as rango
from Articulo 
inner join Marca on Marca.Marca_ID= Articulo.Articulo_MarcaID
inner join Articulo_Mantenimiento on Articulo_Mantenimiento.AM_ArticuloID =Articulo.Articulo_ID
inner join Mantenimiento on Mantenimiento.Mantenimiento_ID= Articulo_Mantenimiento.AM_MantenimientoID
inner join Orden_Mantenimiento on Orden_Mantenimiento.Orden_ID = Mantenimiento.Mantenimiento_ID 
inner join Empleado on Empleado.Empleado_ID =Orden_Mantenimiento.Orden_TecnicoID
Group by Nombre,Marca
)as Mantenimiento
where rango=1

--Consulta del Vendedor que mas ha representado ingresos por marca.

select nombre,marca,generado
from(
select Empleado.Empleado_Nombre || ' ' || Empleado.Empleado_Apellido as nombre,
Marca.Marca_Nombre as marca,
sum(Articulo.Articulo_Precio) as generado,
RANK() OVER (PARTITION BY Marca.Marca_Nombre 
			ORDER BY sum(Articulo.Articulo_Precio) desc) as rango
from Articulo 
inner join Marca on Marca.Marca_ID= Articulo.Articulo_MarcaID
inner join Detalle_Equipo on Detalle_Equipo.DE_ArticuloID =Articulo.Articulo_ID
inner join Equipo on Equipo.Equipo_ID = Detalle_Equipo.DE_EquipoID
inner join Factura_Detalle on Factura_Detalle.FD_EquipoID = Equipo.Equipo_ID
inner join Factura on Factura_ID = Factura_Detalle.FD_ID
inner join Empleado on Empleado.Empleado_ID =Factura.Factura_VendedorID
Group by nombre,marca
) as ventas
where rango=1


--Consulta de la cantidad de artículos obtenidos por concepto de compras de cada cliente 


Select Cliente.Cliente_Nombre || ' ' || Cliente.Cliente_Apellido as Cliente,
count(Detalle_Equipo.DE_ArticuloID)  as Cantidad
from Cliente
inner join Factura on Factura.Factura_ClienteID = Cliente.Cliente_ID
inner join Factura_Detalle on Factura_Detalle.FD_FacturaID = Factura.Factura_ID
inner join Equipo on Equipo.Equipo_ID = Factura_Detalle.FD_EquipoID
inner join Detalle_Equipo on Detalle_Equipo.DE_EquipoID = Equipo.Equipo_ID
group by Cliente

