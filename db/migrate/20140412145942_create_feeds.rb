class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name
      t.text :description
      t.string :feed_type
      t.string :uri

      t.timestamps
    end
  end
end
