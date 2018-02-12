# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'rest-client'

# House.create(name: "Gryffindor", head: "Minerva McGonagall", trait: "brave", image_url: 'https://media1.tenor.com/images/3a943d0a82fac73aabb9e1bc57b24800/tenor.gif?itemid=5903488')
# House.create(name: "Hufflepuff", head: "Pomona Sprout", trait: "loyal", image_url: 'https://media1.tenor.com/images/01b056162e88f00a043abb3836062562/tenor.gif?itemid=5198718')
# House.create(name: "Slytherin", head: "Severus Snape", trait: "cunning", image_url: 'https://media1.tenor.com/images/463b937ae9dccedb1e807c69406a59cb/tenor.gif?itemid=4932529')
# House.create(name: "Ravenclaw", head: "Horace Slughorn", trait: "wise", image_url: 'https:////media1.tenor.com/images/e868ee9543921490391f917a3d70604f/tenor.gif?itemid=5254360')

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

students = [
  {
    "name": "Harry Potter",
    "species": "human",
    "gender": "male",
    "house": "Gryffindor",
    "dateOfBirth": "31-07-1980",
    "yearOfBirth": 1980,
    "ancestry": "half-blood",
    "eyeColour": "green",
    "hairColour": "black",
    "wand": {
      "wood": "holly",
      "core": "phoenix feather",
      "length": 11
    },
    "patronus": "stag",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Daniel Radcliffe",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/harry.jpg"
  },
  {
    "name": "Hermione Granger",
    "species": "human",
    "gender": "female",
    "house": "Gryffindor",
    "dateOfBirth": "19-09-1979",
    "yearOfBirth": 1979,
    "ancestry": "muggleborn",
    "eyeColour": "brown",
    "hairColour": "brown",
    "wand": {
      "wood": "vine",
      "core": "dragon heartstring",
      "length": ""
    },
    "patronus": "otter",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Emma Watson",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/hermione.jpeg"
  },
  {
    "name": "Ron Weasley",
    "species": "human",
    "gender": "male",
    "house": "Gryffindor",
    "dateOfBirth": "01-03-1980",
    "yearOfBirth": 1980,
    "ancestry": "pure-blood",
    "eyeColour": "blue",
    "hairColour": "red",
    "wand": {
      "wood": "willow",
      "core": "unicorn tail-hair",
      "length": 14
    },
    "patronus": "Jack Russell terrier",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Rupert Grint",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/ron.jpg"
  },
  {
    "name": "Draco Malfoy",
    "species": "human",
    "gender": "male",
    "house": "Slytherin",
    "dateOfBirth": "05-06-1980",
    "yearOfBirth": 1980,
    "ancestry": "pure-blood",
    "eyeColour": "grey",
    "hairColour": "blonde",
    "wand": {
      "wood": "hawthorn",
      "core": "unicorn tail-hair",
      "length": 10
    },
    "patronus": "",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Tom Felton",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/draco.jpg"
  },
  {
    "name": "Cedric Diggory",
    "species": "human",
    "gender": "male",
    "house": "Hufflepuff",
    "dateOfBirth": "",
    "yearOfBirth": 1977,
    "ancestry": "",
    "eyeColour": "grey",
    "hairColour": "brown",
    "wand": {
      "wood": "ash",
      "core": "unicorn hair",
      "length": "12.25"
    },
    "patronus": "",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Robert Pattinson",
    "alive": false,
    "image": "http://hp-api.herokuapp.com/images/cedric.png"
  },
  {
    "name": "Cho Chang",
    "species": "human",
    "gender": "female",
    "house": "Ravenclaw",
    "dateOfBirth": "",
    "yearOfBirth": "",
    "ancestry": "",
    "eyeColour": "brown",
    "hairColour": "black",
    "wand": {
      "wood": "",
      "core": "",
      "length": ""
    },
    "patronus": "swan",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Katie Leung",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/cho.jpg"
  },
  {
    "name": "Neville Longbottom",
    "species": "human",
    "gender": "male",
    "house": "Gryffindor",
    "dateOfBirth": "30-07-1980",
    "yearOfBirth": 1980,
    "ancestry": "pure-blood",
    "eyeColour": "",
    "hairColour": "blonde",
    "wand": {
      "wood": "cherry",
      "core": "unicorn tail-hair",
      "length": 13
    },
    "patronus": "",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Matthew Lewis",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/neville.jpg"
  },
  {
    "name": "Luna Lovegood",
    "species": "human",
    "gender": "female",
    "house": "Ravenclaw",
    "dateOfBirth": "13-02-1981",
    "yearOfBirth": 1981,
    "ancestry": "",
    "eyeColour": "grey",
    "hairColour": "blonde",
    "wand": {
      "wood": "",
      "core": "",
      "length": ""
    },
    "patronus": "hare",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Evanna Lynch",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/luna.jpg"
  },
  {
    "name": "Ginny Weasley",
    "species": "human",
    "gender": "female",
    "house": "Gryffindor",
    "dateOfBirth": "11-08-1981",
    "yearOfBirth": 1981,
    "ancestry": "pure-blood",
    "eyeColour": "brown",
    "hairColour": "red",
    "wand": {
      "wood": "yew",
      "core": "",
      "length": ""
    },
    "patronus": "horse",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Bonnie Wright",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/ginny.jpg"
  },
  {
    "name": "Vincent Crabbe",
    "species": "human",
    "gender": "male",
    "house": "Slytherin",
    "dateOfBirth": "",
    "yearOfBirth": "",
    "ancestry": "pure-blood",
    "eyeColour": "black",
    "hairColour": "black",
    "wand": {
      "wood": "",
      "core": "",
      "length": ""
    },
    "patronus": "",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Jamie Waylett",
    "alive": false,
    "image": "http://hp-api.herokuapp.com/images/crabbe.jpg"
  },
  {
    "name": "Gregory Goyle",
    "species": "human",
    "gender": "male",
    "house": "Slytherin",
    "dateOfBirth": "",
    "yearOfBirth": "",
    "ancestry": "pure-blood",
    "eyeColour": "",
    "hairColour": "brown",
    "wand": {
      "wood": "",
      "core": "",
      "length": ""
    },
    "patronus": "",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Josh Herdman",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/goyle.jpg"
  }
]


students.each do |student|
  quote = Faker::HarryPotter.quote
  house = House.all.find_by(name: student["house"])
  Student.create(name: student["name"], quote: quote, house: house, patronus: student['patronus'], image_url: student['image'])
end
