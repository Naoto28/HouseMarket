class City < ApplicationRecord

  belongs_to :prefecture, optional: true
  has_many :estates

end
