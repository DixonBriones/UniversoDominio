/*-Un Ireport de diagramas de barras sobre la cantidad de ventas que ha tenido cada marca.*/

select marca.marca_nombre as Marca,
sum(articulo.articulo_precio) as total_ventas
from marca
inner join articulo on marca.Marca_ID= Articulo.Articulo_MarcaID
inner join Detalle_Equipo on Detalle_Equipo.DE_ArticuloID =Articulo.Articulo_ID
inner join Equipo on Equipo.Equipo_ID = Detalle_Equipo.DE_EquipoID
inner join Factura_Detalle on Factura_Detalle.FD_EquipoID = Equipo.Equipo_ID
group by marca.marca_nombre
