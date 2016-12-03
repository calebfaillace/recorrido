class CreateRecorridoVirtuals < ActiveRecord::Migration
  def change
    create_table :recorrido_virtuals do |t|
    	t.string   "pos_x"
    	t.string   "post_y"
    	t.integer  "proyecto_id"
    	t.string "recorrido_file_name"
    	t.attachment "recorrido"
      t.integer "recorrido_file_size"
      t.timestamps null: false
    end
  end
end
