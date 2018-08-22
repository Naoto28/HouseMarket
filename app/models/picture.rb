class Picture < ApplicationRecord


  belongs_to :estate, optional: true


  attachment :picture
end
