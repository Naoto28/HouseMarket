class Space < ApplicationRecord

  belongs_to :user
  belongs_to :city
  belongs_to :type
  has_many :favorites

end
