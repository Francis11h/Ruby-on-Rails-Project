class AddPictureToHouse < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :picture, :string
  end
end
