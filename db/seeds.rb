# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.create([
    { 
      name: "Lala",
      artist_id: 1,
      genre_id: 1  
    }
])

Genre.create([
    {
        name: "hip-hop"
    }
])

Artist.create([
    {
        name: "Ashlee Simpson",
        bio: "loving"
    }
])
puts "Hello World"