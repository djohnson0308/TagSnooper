class AddSearchToHashtags < ActiveRecord::Migration[5.0]
  def change
    add_reference :hashtags, :search, foreign_key: true
  end
end
