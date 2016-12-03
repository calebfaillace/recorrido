class CreateConstructoras < ActiveRecord::Migration
  def change
    create_table :constructoras do |t|
    	 t.string   "nombre"
    	 t.string   "descripcion"
    	 t.string   "correo"
    	 t.string   "direccion"
    	 t.string   "telefono"
    	 t.string   "logo_url"
      t.timestamps null: false
    end
  end
end
