class HashTagTweet < ActiveRecord::Base
  belongs_to :hash_tag
  belongs_to :tweet
end
