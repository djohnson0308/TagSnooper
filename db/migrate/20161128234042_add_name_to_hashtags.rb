class AddNameToHashtags < ActiveRecord::Migration[5.0]
  def change
    add_column :hashtags, :name, :string
  end
end
