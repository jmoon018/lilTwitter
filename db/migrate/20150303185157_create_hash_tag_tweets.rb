class CreateHashTagTweets < ActiveRecord::Migration
  def change
    create_table :hash_tag_tweets do |t|
      t.integer :tweet_id
      t.integer :hash_tag_id

      t.timestamps
    end
  end
end
