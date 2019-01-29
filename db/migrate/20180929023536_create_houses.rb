class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.references :company
      t.string :location
      t.string :area
      t.string :builtyear
      t.string :style
      t.float :price
      t.integer :totalfloors
      t.string :basement
      t.string :currentowner


      t.timestamps
    end
  end
end
