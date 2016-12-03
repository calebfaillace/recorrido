class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
    	t.string   "tipo_inmueble"
    	t.string   "ciudad"
    	t.string   "direccion"
    	t.string   "area_privada"
    	t.string   "area_construida"
    	t.string   "precio"
    	t.string   "contacto"
    	t.string   "image_url"
    	t.string   "nombre"
    	t.integer  "constructora_id"
      t.timestamps null: false
    end
  end
end
