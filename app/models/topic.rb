class Topic < ApplicationRecord
  belongs_to :user
  has_many :hashtags
end
