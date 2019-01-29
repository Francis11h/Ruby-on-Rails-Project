class Interest < ApplicationRecord
  belongs_to :user
  belongs_to :house

  def hunter_name
    if !user_id.nil?
      User.find(user_id).name
    end
  end

  def hunter_email
    if !user_id.nil?
      User.find(user_id).email
    end
  end

  def hunter_phone
    if !user_id.nil?
      User.find(user_id).phone
    end
  end


end
