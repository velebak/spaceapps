# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(name: "Asteroid Dude")
feed = Feed.create(user_id: user.id)
obs = Observation.create(feed_id: feed.id)
photos = Photo.create([{name: 'p1', path: '/path', width: 344, height: 212, observation_id: obs.id}, {name: 'p2', path: '/path', width: 344, height: 212, observation_id: obs.id}])

