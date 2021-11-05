class House < ApplicationRecord
  has_many :favourites
  has_many :users, through: :favourites

  validates :owner, :about, :price, :image, :details, presence: true
end
