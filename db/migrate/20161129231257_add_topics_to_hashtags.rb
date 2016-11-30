class AddTopicsToHashtags < ActiveRecord::Migration[5.0]
  def change
    add_reference :hashtags, :topic, foreign_key: true
  end
end
