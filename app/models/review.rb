class Review < ApplicationRecord
  has_one :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence:true, inclusion: {in: (0..5)}
end
