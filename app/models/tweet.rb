class Tweet < ActiveRecord::Base
  has_many :hash_tag_tweets
  has_many :hash_tags, through: :hash_tag_tweets

  has_many :replies
  belongs_to :user
end
