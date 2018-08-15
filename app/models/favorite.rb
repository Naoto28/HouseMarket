class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :estate
  belongs_to :space

end
