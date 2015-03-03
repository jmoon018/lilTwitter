class CreateFolloweeFollowers < ActiveRecord::Migration
  def change
    create_table :followee_followers do |t|
      t.integer :follower_id
      t.integer :followee_id

      t.timestamps
    end
  end
end
