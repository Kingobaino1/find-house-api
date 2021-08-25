class User < ApplicationRecord
  has_secure_password
  has_many :favourites, dependent: :destroy
  has_many :houses, through: :favourites

  validates :name, :email, :password_digest, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
