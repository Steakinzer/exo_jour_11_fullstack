# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


User.destroy_all
City.destroy_all
Flopssip.destroy_all
Tag.destroy_all
Comment.destroy_all
JoinTableTagFlopssip.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('flopssips')
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('cities')
ActiveRecord::Base.connection.reset_pk_sequence!('comments')

ville = []
10.times do 
  ville << City.create(name: Faker::Address.city, zip_code: rand(10000..75000))
end

utilisateur = []
10.times do |i|
  utilisateur << User.create(first_name: Faker::Name.unique.first_name,last_name: Faker::Name.unique.last_name, description: Faker::Lorem.sentence(word_count: 4),email: Faker::Internet.free_email, age: rand(17..80), city: ville[rand(1..10)], password: "test")
end

gossip = []
20.times do |j|
  gossip << Flopssip.create(title: Faker::Lorem.characters(number: 10, min_alpha: 4), content: Faker::Movies::Ghostbusters.unique.quote, user: utilisateur[rand(0..10)])
end

tag = []
20.times do 
  tag << Tag.create(title: Faker::Lorem.words(number: 1).join)
end

join = []
20.times do
  join << JoinTableTagFlopssip.create(tag: tag[rand(1..20)], flopssip: gossip[(rand(1..10))])
end
comment = []
20.times do
  comment << Comment.create(user: utilisateur[rand(0..10)], flopssip: gossip[(rand(1..10))], content: Faker::Lorem.characters(number: 10, min_alpha: 4))
end



