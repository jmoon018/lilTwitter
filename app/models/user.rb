class User < ActiveRecord::Base
  #validates :email, uniqueness: true
  #validates :handle, uniqueness: true

  #has_many :tweets
  has_many :user_tweets
  has_many :follower_followees


  has_many :tweets
  has_many :favorites, :through => :user_tweets, source: :tweet

  #has_many :tweets, through: :user_tweets
  #has_many :tweets, foreign_key: "twats"

  #has_many :favorites, through: :user_tweets, class_name: :tweet

  #has_many :followees, class_name: :User, through: :follower_followees
  #has_many :followers, class_name: :User, through: :follower_followees
end

