class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :parent_hashtag
      t.date :start_date
      t.date :end_date
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
