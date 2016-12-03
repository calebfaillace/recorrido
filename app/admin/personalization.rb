ActiveAdmin.register Personalization do
permit_params :caracteristica_personalizar, :pos_x, :pos_y, :objeto, :image

form do |f|
    f.inputs "" do
      f.input :caracteristica_personalizar
      f.input :pos_x
      f.input :pos_y
      f.label "Archivo del objeto"
      f.file_field :objeto
      f.label "Imagen del objeto"
      f.file_field :image
    end
    f.actions
  end
 	

 	show do 
 		attributes_table do
 			row :caracteristica_personalizar
 			row :pos_x
 			row :pos_y
 			row :objeto_file_name
 			row :image
 		end
 	end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
