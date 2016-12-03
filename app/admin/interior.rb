ActiveAdmin.register Interior do
 
 permit_params :proyecto_id, :caracteristica_interior
 form do |f|
    f.inputs '' do
      f.input :proyecto, as: :select, collection: Proyecto.pluck(:nombre, :id)
      f.input :caracteristica_interior
    end
    f.actions
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
