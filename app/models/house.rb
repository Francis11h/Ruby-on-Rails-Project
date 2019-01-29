class House < ApplicationRecord
  belongs_to :company
  has_many :interests,dependent: :destroy

  validates :location, presence: true
  validates :area, presence: true
  validates :builtyear, presence: true
  validates :price, presence: true
  validates :totalfloors, presence: true
  validates :currentowner, presence: true
  STYLE = ['single family house', 'apartment', 'condos']
  validates :style, inclusion: STYLE
  BASEMENT = %w[yes no]
  validates :basement, inclusion: BASEMENT
  mount_uploader :picture, PictureUploader

  def self.search(search)
    if search
      where(["location LIKE ?", "%#{search}%"])
    else
      all
    end
  end

  def realtor_phone
    if !user_id.nil?
      User.find(user_id).phone
    end
  end



  #
  def indelete
    Interest.all.each {|x| if (x.house_id == self.id) && (x.user_id == current_user.id) then x.destroy end}
    super
  end



end
