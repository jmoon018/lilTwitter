class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :picture_url
      t.text :content

      t.timestamps
    end
  end
end
