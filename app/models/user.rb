class User < ApplicationRecord
  has_many :hashtags
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true
end
