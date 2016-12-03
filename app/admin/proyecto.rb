ActiveAdmin.register Proyecto do

permit_params :tipo_inmueble, :ciudad, :direccion,:area_privada,:area_construida,:precio,:contacto,:image_url,:nombre,:constructora_id


 form do |f|
    f.inputs '' do
      f.input :constructora, as: :select, collection: Constructora.pluck(:nombre, :id)
      f.input :nombre
      f.input :tipo_inmueble
      f.input :ciudad
      f.input :direccion
      f.input :area_privada
      f.input :area_construida
      f.input :precio
      f.input :contacto
      f.input :image_url

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
