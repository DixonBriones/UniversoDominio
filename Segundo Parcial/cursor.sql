
/*-Un cursor que muestre Clientes, la cantidad de técnicos
que le han atendido, lo total pagado en mantenimiento, la cantidad de
equipos que entran a mantenimiento que sean comprado en el local y la 
cantidad de equipos que no son comprados en el local.
*/

do $$
declare
	tabla record;
	clientes cursor for select (cliente.cliente_nombre || ' ' || cliente.cliente_apellido) as Cliente,
						count (orden_mantenimiento.orden_tecnicoid) as Cantidad_Tecnicos,
						sum (orden_mantenimiento.orden_total) as Total_Mantenimiento,
						count(CASE WHEN mantenimiento_origenequipo='true' THEN 1 END) as Origen_Local,
						count(CASE WHEN mantenimiento_origenequipo='false' THEN 1 END) as Origen_externo
						from cliente
						inner join orden_mantenimiento on orden_mantenimiento.orden_clienteid = cliente.cliente_id
						inner join mantenimiento on mantenimiento.mantenimiento_ordenid=orden_mantenimiento.orden_id
						group by Cliente;
begin 
open clientes;
fetch clientes into tabla;
while (found) loop
Raise notice 'Nombre del cliente: %, Tecnicos que le han atendido: %, Ingreso total mantenimientos: %,
Equipos reparados de origen local: %, Equipos reparados de origen externo: %',
tabla.Cliente, tabla.Cantidad_Tecnicos, tabla.Total_Mantenimiento, tabla.Origen_Local, tabla.Origen_externo;
fetch clientes into tabla;
end loop;
end $$
language 'plpgsql';



