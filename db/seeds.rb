# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "starting seeding!"

artists = Artist.create([
    {
        name: "Whitney Houston",
        bio: "The best female artist to have ever lived!"
    },
    {
        name: "NSYNC",
        bio: "Former boy band"
    },
    {
        name: "Trevor Dickson",
        bio: "Newest, hottest voice for 2020!"
    }
    ])

    genres = Genre.create([
        {
            name: 'Pop'
        },
        {
            name: 'Boy band'
        },
        {
            name: 'Singer-Songwriter'
        }
    ])







songs = Song.create([
    {
        name:"I'm every woman",
        artist_id: Artist.last.id ,
        genre_id: Genre.last.id
    },
    {
        name:"It's going to May",
        artist_id: Artist.last.id ,
        genre_id: Genre.last.id
    },
    {
        name:"Old man and a Pigeon in Love",
        artist_id: Artist.last.id ,
        genre_id: Genre.last.id
    }
])




puts "Seeding complete!"