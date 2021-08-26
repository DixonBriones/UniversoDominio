create or replace function permitirTecnico() returns trigger
as 
$permitirTecnico$
	declare 
		instanciasMantenimiento int;
begin 
	select count(*) into instanciasMantenimiento from orden_mantenimiento where orden_tecnicoid = new.orden_tecnicoid
	and extract(week from current_date) = extract(week from orden_fchingreso) 
	and extract(year from current_date) = extract(year from orden_fchingreso);
	if (instanciasMantenimiento>=2)then
		raise exception 'No se permite asignar mas de dos trabajo por semana a los tecnicos';
	end if;
	return new;
end;
$permitirTecnico$ 
language plpgsql;

create trigger permitirTecnico before insert 
on Orden_Mantenimiento for each row
execute procedure permitirTecnico();

/*
Insert into Orden_Mantenimiento(Orden_ID,Orden_ClienteID,Orden_EmpleadoReceptor,Orden_TecnicoID,Orden_FchIngreso,Orden_EstadoOrden)
values(5,2,3,4,current_date,'En progreso');


select count(*) from orden_mantenimiento where orden_tecnicoid = 4 and extract(week from current_date) = extract(week from orden_fchingreso)
and extract(year from current_date) = extract(year from orden_fchingreso);*/



