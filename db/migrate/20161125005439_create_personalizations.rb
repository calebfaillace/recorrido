class CreatePersonalizations < ActiveRecord::Migration
  def change
    create_table :personalizations do |t|
		t.string   "caracteristica_personalizar"
    	t.string   "pos_x"
    	t.string   "pos_y"
    	t.string "objeto_file_name"
      	t.attachment "objeto"
      	t.integer "objeto_file_size"
      t.timestamps null: false
    end
  end
end
