class FollowerFollowee < ActiveRecord::Base
  has_one :user
  has_one :tweet
end
