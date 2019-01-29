class AddHouseIdToInquiries < ActiveRecord::Migration[5.2]
  def change
    add_reference :inquiries, :house, foreign_key: true
  end
end
