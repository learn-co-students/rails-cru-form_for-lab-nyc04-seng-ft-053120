# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts " Injecting"

Artist.create([
              { name: "Linkin Park",
                bio: "Here it we go again"
              },
              { name: "Eminem",
                bio: "I'm Back!!!"
              },
              { name: "System of a Down",
                bio: "BYOB people!!!"
              },
              { name: "Kiminowama",
                bio: "That was my name"
              }
              ])

Genre.create([
              { name: "Rock"
              },
              { name: "Rap"
              },
              { name: "Pop"
              },
              { name: "International"
              }
              ])

Song.create([
             { name: "Numb",
               artist_id: 1,
               genre_id:1
             },
             { name: "Cleaning out my closet",
               artist_id: 2,
               genre_id:2
             },
             { name: "Toxic",
               artist_id: 3,
               genre_id:1
             },
             { name: "kimi no ",
               artist_id: 4,
               genre_id:4
             },
           ])

puts "All done!"
