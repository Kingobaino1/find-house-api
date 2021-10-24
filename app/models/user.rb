class User < ApplicationRecord
  has_secure_password
  has_many :favourites, dependent: :destroy
  has_many :houses, through: :favourites

  validates :name, presence: true, length: { minimum: 5 }
  validates :email, :password_digest, presence: true, uniqueness: true
end
