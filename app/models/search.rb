class Search < ApplicationRecord
  belongs_to :topic
  has_many :hashtags
end
