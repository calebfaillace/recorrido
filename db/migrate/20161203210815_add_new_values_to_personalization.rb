class AddNewValuesToPersonalization < ActiveRecord::Migration
  def change
    add_column :personalizations, :image_file_size, :integer
    add_column :personalizations, :image_file_name, :string
    add_column :personalizations, :image, :string
  end
end
