class RemoveSearchidFromHashtags < ActiveRecord::Migration[5.0]
  def change
    remove_column :hashtags, :search_id, :string
  end
end
