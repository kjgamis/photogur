# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Picture.create(
  title:  'Times Square',
  artist: 'Wojtek Witkowski',
  url:    'https://picsum.photos/3000/1996?image=274'
)

Picture.create(
  title:  'Paris',
  artist: 'Louis Pellissier',
  url:    'https://picsum.photos/3000/1996?image=318'
)

Picture.create(
  title:  'Skyline',
  artist: 'Sarah Holmes',
  url:    'https://picsum.photos/3000/1996?image=931'
)

Picture.create(
  title: 'Continental',
  artist: 'Tim Stief',
  url: 'https://picsum.photos/3000/1996?image=1071'
)

Picture.create(
  title: 'City Sun',
  artist: 'Kevin Young',
  url: 'https://picsum.photos/3000/1996?image=1067'
)

Picture.create(
  title: 'Montreal Memories',
  artist: 'Clark Street Mercantile',
  url: 'https://picsum.photos/3000/1996?image=1059'
)

Picture.create(
  title: 'Cliffs',
  artist: 'Joseph Barrientos',
  url: 'https://picsum.photos/3000/1996?image=1050'
)

Picture.create(
  title: 'Zurich Airport',
  artist: 'Erex Attias',
  url: 'https://picsum.photos/3000/1996?image=1033'
)

Picture.create(
  title: 'Stack',
  artist: 'Joanna Kosinska',
  url: 'https://picsum.photos/3000/1996?image=998'
)

Picture.create(
  title: 'Lighthouse',
  artist: 'Joshua Hibbert',
  url: 'https://picsum.photos/3000/1996?image=870'
)

Picture.create(
  title: 'Grand Central Station',
  artist: 'Thomas Lefebvre',
  url: 'https://picsum.photos/3000/1996?image=800'
)

Picture.create(
  title: 'Photo Equipment',
  artist: 'C MA',
  url: 'https://picsum.photos/3000/1996?image=435'
)

Picture.create(
  title: 'Train',
  artist: 'Matthew Wiebe',
  url: 'https://picsum.photos/3000/1996?image=694'
)

Picture.create(
  title: 'Brooklyn',
  artist: 'Vita Vilcina',
  url: 'https://picsum.photos/3000/1996?image=554'
)

Picture.create(
  title:  'Desolate Highway',
  artist: 'Kamil Lehmann',
  url:    'https://picsum.photos/3000/1996?image=379'
)

Picture.create(
  title:  'Mountain By The Lake',
  artist: 'Nick West',
  url:    'https://picsum.photos/3000/1996?image=381'
)

Picture.create(
  title:  'Chateau',
  artist: 'Vadim Sherbakov',
  url:    'https://picsum.photos/3000/1996?image=193'
)

Picture.create(
  title:  'Web Designer\'s Notebook',
  artist: 'Galymzhan Adbugalimov',
  url:    'https://picsum.photos/3000/1996?image=180'
)

Picture.create(
  title:  'Greece',
  artist: 'Margaret Barley',
  url:    'https://picsum.photos/3000/1996?image=49'
)

Picture.create(
  title:  'White Pebble Beach',
  artist: 'Pau Jarvis',
  url:    'https://picsum.photos/3000/1996?image=13'
)

Comment.create(
  name: 'KJG',
  message: 'fave',
  picture_id: 1
)

Comment.create(
  name: 'KJG',
  message: 'pretty!',
  picture_id: 2
)

Comment.create(
  name: 'friend',
  message: 'city vibes',
  picture_id: 3
)


User.create(
  email: 'kjgamis@live.ca',
  password: '1234',
  password_confirmation: '1234'
)
