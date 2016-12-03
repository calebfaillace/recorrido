json.id @proyecto.id
json.nombre @proyecto.nombre
json.tipo @proyecto.tipo_inmueble 
json.ciudad @proyecto.ciudad 
json.direccion @proyecto.direccion 
json.area_privada @proyecto.area_privada 
json.area_cons @proyecto.area_construida 
json.precio @proyecto.precio 
json.contacto @proyecto.contacto 

json.interior do
	json.caracteristicas_interior @proyecto.interiors
end

json.exterior do
	json.caracteristicas_exterior @proyecto.exteriors
end