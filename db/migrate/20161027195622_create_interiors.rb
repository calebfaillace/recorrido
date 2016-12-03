class CreateInteriors < ActiveRecord::Migration
  def change
    create_table :interiors do |t|
    	t.string   "caracteristica_interior"
    	t.integer  "proyecto_id"
      t.timestamps null: false
    end
  end
end
