ActiveAdmin.register RecorridoVirtual do

permit_params :pos_x, :post_y, :recorrido, :proyecto_id, :recorrido_file_name, :recorrido_file_size


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
   index do
    selectable_column
    id_column
    column :pos_x
    column :post_y
    column :recorrido
    column :recorrido_file_name
    column :recorrido_file_size
    actions
  end

  form do |f|
    f.inputs "Recorrido Details" do
      f.input :proyecto, as: :select, collection: Proyecto.pluck(:nombre, :id)
      f.input :pos_x
      f.input :post_y
      f.file_field :recorrido
    end
    f.actions
  end
 	

 	show do 
 		attributes_table do
 			row :proyecto_id
 			row :pos_x
 			row :post_y
 			row :recorrido_file_name
 		end
 	end


end
