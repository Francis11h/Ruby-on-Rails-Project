class Company < ApplicationRecord
  has_many :houses, inverse_of: :company,dependent: :destroy
  has_many :users, inverse_of: :company,dependent: :nullify
  validates :name, presence: true
  validates_format_of :website, :with => /\A(((http|https):\/\/|)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?)\Z/ix

  validates :address, presence: true
  SIZE = %w[1-50 51-200 201-500 501-1000 1000+]
  validates :size, presence: true, inclusion: SIZE
  validates :founded, presence: true
  validates :revenue, presence: true
  validates :synopsis, presence: true

  # def destroy
  #   User.all.each {|x| if x.company_id == self.id then x.company_id = nil end}
  #   super
  # end

end
