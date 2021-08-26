/*Un procedimiento almacenado que permita ingresar el nombre del
cliente y que muestre la cantidad de veces que ha visitado el 
local para mantenimiento y para compras*/

create or replace function obtener_datos(
	In nombrecliente varchar,
	out nombre_cliente varchar,
	Out visitaMantanimiento int,
	Out visitaCompra int
)
as $BODY$
begin 
	select concat_ws (' ', cliente.cliente_nombre, cliente.cliente_apellido) as nombre_cliente,
	count (distinct orden_mantenimiento.orden_id) as visitas_por_mantenimiento,
	count (distinct factura.factura_id) as visitas_por_compra
	into nombre_cliente,visitaMantanimiento,visitaCompra
	from Cliente
	inner join factura on factura.factura_clienteid = cliente.cliente_id
	inner join orden_mantenimiento on orden_mantenimiento.orden_clienteid = cliente.cliente_id
	where  concat_ws (' ', cliente.cliente_nombre, cliente.cliente_apellido) = nombrecliente
	group by nombre_cliente;
end 
$BODY$
language plpgsql;


select * from obtener_datos('Jose Sanchez')

select * from obtener_datos('Laura Bravo')