class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :location
      t.integer :min_area
      t.integer :max_area
      t.integer :min_year
      t.integer :max_year
      t.string :style
      t.float :min_price
      t.float :max_price
      t.integer :totalfloors
      t.string :basement

      t.timestamps
    end
  end
end
