class CreateExteriors < ActiveRecord::Migration
  def change
    create_table :exteriors do |t|
    	 t.string   "caracteristica_exterior"
   		 t.integer  "proyecto_id"
      t.timestamps null: false
    end
  end
end
