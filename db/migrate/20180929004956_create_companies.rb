class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :size
      t.string :founded
      t.string :revenue
      t.text :synopsis

      t.timestamps
    end
  end
end
