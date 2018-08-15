class Space < ApplicationRecord

  belongs_to :user
  belongs_to :city
  belongs_to :type
  has_many :pictures
  has_many :favorites

end
