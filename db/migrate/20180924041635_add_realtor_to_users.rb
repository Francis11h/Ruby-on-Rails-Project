class AddRealtorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :realtor, :boolean, default: false
  end
end
