class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: {in: %w(japanese french belgian chinese italian),
      message: "%{value} is not a valid size" }
end
