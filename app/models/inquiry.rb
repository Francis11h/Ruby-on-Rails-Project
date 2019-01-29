class Inquiry < ApplicationRecord
  belongs_to :user
  belongs_to :house
  default_scope -> { order(created_at: :desc) }
  validates :subject, :presence => true,length: {maximum: 40}
  validates :message, :presence => true,length: {maximum: 140}

  def ihunter_name
    if !user_id.nil?
      User.find(user_id).name
    end
  end
end
