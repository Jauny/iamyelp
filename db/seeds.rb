# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "creating places..."
Place.create(:name => "Devbootcamp", :address => "717 california", :description => "The best office ever")
Place.create(:name => "Starbucks", :address => "anywhere closeby", :description => "Nice coffee")
Place.create(:name => "Exec", :address => "Somewhere in SF not sur", :description => "Cool team, fast paced")