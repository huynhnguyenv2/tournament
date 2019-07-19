# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Competition.create(name: "Champion")
Group.create(name: "A1")
Player.create(name: "Alex", group_id: 1)
Player.create(name: "Duck", group_id: 1)
Player.create(name: "Join", group_id: 1)
Player.create(name: "Vene", group_id: 1)
Match.create(time: "12:00:00", date: "21/08/2019", venue: "Station", point_1: 3, point_2: 0)
Match.create(time: "15:00:00", date: "21/08/2019", venue: "Station", point_1: 0, point_2: 3)
Match.create(time: "17:00:00", date: "21/08/2019", venue: "Station", point_1: 3, point_2: 0)
Match.create(time: "19:00:00", date: "21/08/2019", venue: "Station", point_1: 1, point_2: 1)
Match.create(time: "12:00:00", date: "22/08/2019", venue: "Station", point_1: 1, point_2: 1)
Match.create(time: "15:00:00", date: "22/08/2019", venue: "Station", point_1: 0, point_2: 3)
Match.create(time: "17:00:00", date: "22/08/2019", venue: "Station", point_1: 3, point_2: 0)
Link.create(player_one_id: 1, player_two_id: 2, match_id: 1)
Link.create(player_one_id: 3, player_two_id: 1, match_id: 2)
Link.create(player_one_id: 1, player_two_id: 4, match_id: 3)
Link.create(player_one_id: 2, player_two_id: 3, match_id: 4)
Link.create(player_one_id: 4, player_two_id: 2, match_id: 5)
Link.create(player_one_id: 3, player_two_id: 4, match_id: 6)


