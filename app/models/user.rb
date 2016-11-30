class User < ApplicationRecord
  has_many :topics
  has_many :hashtags, through: :topics
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true
  has_secure_password

end
