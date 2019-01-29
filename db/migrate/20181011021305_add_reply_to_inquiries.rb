class AddReplyToInquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :inquiries, :reply, :text
  end
end
