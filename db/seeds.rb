# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
bristol = { name: 'Epicure', category: 'french', address: '75008 Paris' }
wokway = { name: 'Wok way', category: 'chinese', address: '75013 Paris' }
bistrot = { name: 'Le Bistrot', category: 'french', address: '75004 Paris' }
sushi_shop = { name: 'Sushi shop', category: 'japanese', address: '75013 Paris' }
big_mama = { name: 'Popolare', category: 'italian', address: '75002 Paris' }

[bristol, wokway, bistrot, sushi_shop, big_mama].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
