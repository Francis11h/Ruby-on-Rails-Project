class AddUserIdToInquiries < ActiveRecord::Migration[5.2]
  def change
    add_reference :inquiries, :user, foreign_key: true
  end
end
