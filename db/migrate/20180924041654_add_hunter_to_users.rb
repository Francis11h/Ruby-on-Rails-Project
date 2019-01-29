class AddHunterToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hunter, :boolean, default: false
  end
end
