class AddNewValuesToRecorridoVirtual < ActiveRecord::Migration
  def change
    add_column :recorrido_virtuals, :recorrido, :string
  end
end
