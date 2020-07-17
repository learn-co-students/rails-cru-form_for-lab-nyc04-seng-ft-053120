# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Artist.destroy_all
Genre.destroy_all

alicia = Artist.create(name: 
"Alicia Keys", bio: "Hi, I am Alicia")

hip_hop = Genre.create(name: "hip hop")

empire = Song.create(name: "Empire State of Mind", artist_id: alicia.id, genre_id: hip_hop.id)