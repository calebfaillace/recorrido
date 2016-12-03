class ChangeTypeCategory < ActiveRecord::Migration
  def change
  	add_column :personalizations, :objeto, :string
  end
end
