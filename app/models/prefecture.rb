class Prefecture < ApplicationRecord

  belongs_to :user, optional: true
  has_many :cities


end
