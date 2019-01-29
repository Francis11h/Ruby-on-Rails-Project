class AddUserIdToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_reference :companies, :user, foreign_key: true
  end
end
