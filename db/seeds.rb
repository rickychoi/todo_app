# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

words = %w[here are some list names and other random words to grab]
lists = []

(rand(5..15)).times do |c|
  lists << List.create(name: words.sample(rand(2..6)).join(" "))
end

lists.each do |lst|
  (rand(2..5)).times do |c|
    lst.tasks.create(name: words.sample(rand(1..4)).join(" "))
  end
end