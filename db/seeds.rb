# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a1= Artist.create(name:"E-40", bio:"The Goon with the Spoon" )
a2 = Artist.create(name:"Too $hort", bio:"What's my favorite word")
a3 = Artist.create(name:"Toni, Tone, Tony", bio:"Three times Tony")
g1 = Genre.create(name:"Hip Hop")
g2= Genre.create(name:"R&B")
s1 = Song.create(name:"Sideways", artist_id: a1.id, genre_id: g1.id)
s1 = Song.create(name:"Blow the Whistle", artist_id: a2.id, genre_id: g1.id)
s1 = Song.create(name:"Lay Your Head On My Pillow", artist_id: a3.id, genre_id: g2.id)