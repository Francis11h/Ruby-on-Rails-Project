class AddHouseIdToInterests < ActiveRecord::Migration[5.2]
  def change
    add_reference :interests, :house, foreign_key: true
  end
end
