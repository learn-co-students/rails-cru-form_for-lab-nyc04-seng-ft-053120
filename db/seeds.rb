# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = Artist.create([
  {
    name: "Taylor Swift",
    bio: "young and blond"
  },
  {
    name: "George Harrison",
    bio: "former beatle"
  },
  {
    name: "Adele",
    bio: "british"
  },
  {
    name: "Laura Mvula",
    bio: "will my 3rd album ever come out?"
  }
])

genres = Genre.create([
  {
    name: "pop"
  },
  {
    name: "hip hop"
  }
])

songs = Song.create([
  {
    name: "Step On It",
    artist_id: 1,
    genre_id: 1
  },
  {
    name: "Fools",
    artist_id: 2,
    genre_id: 1
  },
  {
    name: "Yesterday",
    artist_id: 1,
    genre_id: 2
  },
  {
    name: "Every Sunday",
    artist_id: 4,
    genre_id: 1
  }
])