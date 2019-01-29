class AddUserIdToHouses < ActiveRecord::Migration[5.2]
  def change
    add_reference :houses, :user, foreign_key: true
  end
end
