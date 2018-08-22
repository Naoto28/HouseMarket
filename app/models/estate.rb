class Estate < ApplicationRecord

  belongs_to :user
  belongs_to :city
  belongs_to :type
  has_many :pictures
  has_many :favorites
  accepts_nested_attributes_for :pictures, allow_destroy: true

  validates :comment, length: { maximum: 16 }
  validates :comment, presence: true
  validates :price, presence: true
  validates :content, presence: true
  validates :name, presence: true


end
