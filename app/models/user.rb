class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :handle, uniqueness: true

  # tweets
  has_many :tweets

  # favorited tweets
  has_many :user_tweets
  has_many :favorites, through: :user_tweets, source: :tweet

  # followers/followees
  has_many :followers, :class_name => "FolloweeFollower", foreign_key: "followee_id"
  has_many :followees, :class_name => "FolloweeFollower", foreign_key: "follower_id"
end

