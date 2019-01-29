class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.references :company
      t.references :user
      t.references :house
      t.timestamps
    end
  end
end
