ActiveAdmin.register Constructora do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :nombre, :descripcion, :correo, :direccion, :telefono, :logo_url

show do
	attributes_table do
		row :nombre
		row :descripcion
    	row :correo
    	row :direccion
    	row :telefono
    	row :logo_url
	end
end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
