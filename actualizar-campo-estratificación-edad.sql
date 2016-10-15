-- después del select que carga los datos en la tabla, 
-- se debe actualizar cada uno de los id's de estrato 
-- recién ingresados
update DimEmployees 
set IdEstratoEdad = 
(select top 1 e.IdEstratificacion from DimEstratificacion e
where e.CodigoEstrato = 'EDAD'
and  e.LimiteInferior <= AgeInYears and AgeInYears < e.LimiteSuperior
)