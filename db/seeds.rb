# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'rest-client'

House.create(name: "Gryffindor", head: "Minerva McGonagall", trait: "brave", image_url: 'https://media1.tenor.com/images/3a943d0a82fac73aabb9e1bc57b24800/tenor.gif?itemid=5903488')
House.create(name: "Hufflepuff", head: "Pomona Sprout", trait: "loyal", image_url: 'https://media1.tenor.com/images/01b056162e88f00a043abb3836062562/tenor.gif?itemid=5198718')
House.create(name: "Slytherin", head: "Severus Snape", trait: "cunning", image_url: 'https://media1.tenor.com/images/463b937ae9dccedb1e807c69406a59cb/tenor.gif?itemid=4932529')
House.create(name: "Ravenclaw", head: "Horace Slughorn", trait: "wise", image_url: 'https:////media1.tenor.com/images/e868ee9543921490391f917a3d70604f/tenor.gif?itemid=5254360')

patronuses = ["Badger",
"Basset Hound",
"Beagle",
"Black and White Cat",
'Black Mamba',
'Black Mare',
'Black Stallion',
'Black Swan',
'Blackbird',
'Bloodhound',
'Borzoi',
'Brown Bear',
'Brown Hare',
'Buzzard',
'Calico Cat',
'Capuchin Monkey',
'Chestnut Mare',
'Chestnut Stallion',
'Chow Dog',
'Crow',
'Dapple Grey Mare',
'Dapple Grey Stallion',
'Deerhound',
'Dragon',
'Dragonfly',
'Dun Mare',
'Dun Stallion',
'Eagle',
'Falcon',
'Field Mouse',
'Fire-Dwelling Salamander',
'Fox',
'Fox Terrier',
'Ginger Cat',
'Goshawk',
'Granian Winged Horse',
'Grass Snake',
'Grey Squirrel',
'Greyhound',
'Hedgehog',
'Hummingbird',
'Husky',
'Ibizan Hound',
'Magpie',
'Manx Cat',
'Marsh Harrier',
'Mastiff Dog',
'Mink',
'Mole',
'Mongrel Dog',
'Mountain Hare',
'Nebelung Cat',
'Newfoundland',
'Nightjar',
'Ocicat',
'Orangutan',
'Osprey',
'Otter',
'Pheasant',
'Piebald Mare',
'Piebald Stallion',
'Pine Marten',
'Polecat',
'Ragdoll Cat',
'Rat',
'Rattlesnake',
'Robin',
'Rottweiler',
'Russian Blue Cat',
'Shrew',
'Siberian Cat',
'Sparrow',
'Sparrowhawk',
'Sphynx Cat',
'Stoat',
'Swallow',
'Swift',
'Tonkinese Cat',
'Tortoiseshell Cat',
'Vole',
'Weasel',
'West Highland Terrier',
'White Mare',
'White Stallion',
'White Swan',
'Wild Boar',
'Wild Rabbit',
'Wildcat',
'Wolf',
'Wood Mouse']


response = RestClient.get('http://hp-api.herokuapp.com/api/characters/students')

students = JSON.parse(response.body)
byebug

c = "hello"

# students.each do |student|
#   quote = Faker::HarryPotter.quote
#   house = House.all.find_by(name: student["house"])
#   Student.create(name: student["name"], quote: quote, house: house, patronus: student['patronus'], image_url: student['image'])
# end
