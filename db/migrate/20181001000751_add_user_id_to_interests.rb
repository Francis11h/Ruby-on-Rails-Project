class AddUserIdToInterests < ActiveRecord::Migration[5.2]
  def change
    add_reference :interests, :user, foreign_key: true
  end
end
