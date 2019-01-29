class AddMethodToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :method, :string
  end
end
