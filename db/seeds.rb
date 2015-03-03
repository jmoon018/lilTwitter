require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'manuel', city: cities.first)

def create_users (count, args = {})
  if args.empty?
    args["name"] ||= Faker::Name.name
    args["handle"] ||= Faker::Lorem.word
    args["username"] ||= Faker::Lorem.word
    args["password"] ||= "pw"
    args["email"] ||= Faker::Internet.safe_email
    args["picture_url"] ||= Faker::Avatar.image
  end
  count.times { User.create(args); puts "Creating a user" }
end

def create_tweet (args = {})
  Tweet.create(args)
end

def create_tweets(count, args)
  if args.empty?
    args["content"] ||= Faker::Lorem.paragraph

    # a random user has the tweet
    args["user_id"] ||= (1..User.count).to_a.sample(1)
  end
  count.times { create_tweet (args) }
end

def create_hash_tag





# make the stuff
create_users(10, {})
# master user, i guess
create_users(1, {name: "Jamal"})

