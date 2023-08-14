class Food < ApplicationRecord
  belongs_to :restaurant
  validates :name, :price, :status, presence: true
end
