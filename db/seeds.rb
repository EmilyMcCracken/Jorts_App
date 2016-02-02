# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# seeded admin
Admin.create!(username: 'SuperUser', password: "1234", email: "superuser@jorts.com")

# seeded users
User.create!(username: 'kickinyunk', password: "1234", email: "yunk@yunk.com")
User.create!(username: 'DylanBB8', password: "1234", email: "dylan@yunk.com")
User.create!(username: 'kiwisits', password: "1234", email: "kiwi@yunk.com")
User.create!(username: 'jackjackattack', password: "1234", email: "jackjack@yunk.com")
User.create!(username: 'emilymcc803', password: "1234", email: "emily@yunk.com")
User.create!(username: 'mnd5021', password: "1234", email: "mike@yunk.com")
User.create!(username: 'kmeany', password: "1234", email: "kelly@yunk.com")
User.create!(username: 'rollerderbz', password: "1234", email: "roller@yunk.com")
User.create!(username: 'frisbeeking', password: "1234", email: "frisbee@yunk.com")
User.create!(username: 'pubquizchamp', password: "1234", email: "champ@yunk.com")


# seeded profiles
Profile.create(fname: 'Mike', lname: 'DiL', bio: "I like soccer and kickball", question: "Tommy Pickles", user_id: 1, address: "119 Davis Street, Philadelphia PA")
Profile.create(fname: 'Dylan', lname: 'Weinberger', bio: "Casual Frisbee is my favorite!", question: "Doug Funny", user_id: 2, address: "10 Righter Street, Philadelphia PA")
Profile.create(fname: 'Kiwi', lname: 'Weinberger', bio: "I like sitting and staring at walls", question: "Chucky Finster", user_id: 3, address: "121 Seville Street, Philadelphia PA")
Profile.create(fname: 'JackJack', lname: 'Jaffe', bio: "I like JJ", question: "Phil n Lil", user_id: 4, address: "141 Levering Street, Philadelphia PA")
Profile.create(fname: 'Emily', lname: 'McCracken', bio: "Interests are quizzo and biking", question: "Skeeter", user_id: 5, address: "121 Davis Street, Philadelphia PA")
Profile.create(fname: 'Mike', lname: 'DiLullo', bio: "Happy to do anything outside!", question: "The Beets", user_id: 6, address: "4025 Cresson Street, Philadelphia PA")
Profile.create(fname: 'Kelly', lname: 'Meany', bio: "I like working out in groups!", question: "Angelica", user_id: 7, address: "2007 18th St NW, Washington, DC")
Profile.create(fname: 'Merry', lname: 'McCracken', bio: "I like judging others while they do activities", question: "Patty Mayonnaise", user_id: 8, address: "1540 North Capitol St NW, Washington, DC")
Profile.create(fname: 'Maeve', lname: 'McCracken', bio: "I like to run", question: "Arnold", user_id: 9, address: "1400 Irving St NW, Washington, DC")
Profile.create(fname: 'Alan', lname: 'Rhode', bio: "I like finance.. is this app for finance?", question: "Helga", user_id: 10, address: "3500 Connecticut Ave NW, Washington, D")

# seeded activities 
Activity.create(name: "Frisbee at the Art Museum", description: "", level: "Casual", game: "Frisbee", address: "Philadelphia Art Museum")
Activity.create(name: "Basketball at Park near CH", description: "", level: "Mild", game: "Basketball", address: "Capitol Hill, Washington DC")
Activity.create(name: "Quizzo at Brew Pub", description: "", level: "Intermediate", game: "Quizzo", address: "Manayunk Brewery Pub, Philadelphia PA")
Activity.create(name: "Soccer by Rox HS", description: "", level: "Intense", game: "Soccer", address: "Roxborough High School, Philadelphia PA")
Activity.create(name: "kickball at pretzel park", description: "", level: "Casual", game: "Kickball", address: "Pretzel Park, Philadelphia PA")
Activity.create(name: "football at Grant's house", description: "", level: "Mild", game: "Football", address: "4027 Cresson Street, Philadelphia, PA")
Activity.create(name: "frisbee golf at Fairmount course", description: "", level: "Intermediate", game: "Frisbee Golf", address: "Fairmount Park")
Activity.create(name: "Advanced Run, starting around Independence Hall", description: "", level: "Intense", game: "Run", address: "Independence Hall, Philadelphia PA")
Activity.create(name: "City bike ride!", description: "", level: "Casual", game: "Bike", address: "Rittenhouse Park, Philadelphia PA")
Activity.create(name: "let's play some frisbee DCers!", description: "", level: "Mild", game: "Frisbee", address: "Jefferson Memorial, Washington DC")
Activity.create(name: "tag football by the Mann Center", description: "", level: "Intermediate", game: "Football", address: "Belmont Plateau, Philadelphia PA")
Activity.create(name: "championship quizzo at good dog bar in midtown", description: "", level: "Intense", game: "Quizzo", address: "Good Dog Bar, Philadelphia PA")
Activity.create(name: "pick up basketball at YMCA", description: "", level: "Casual", game: "Basketball", address: "Philadelphia YMCA")
Activity.create(name: "kickball in the rec room", description: "", level: "Mild", game: "Kickball", address: "Washington DC YMCA")
Activity.create(name: "soccer in the city", description: "", level: "Intermediate", game: "Soccer", address: "Fitler Square Park, Philadelphia PA")
Activity.create(name: "intense ultimate frisbee at park near Dupont", description: "", level: "Intense", game: "Frisbee", address: "Dupont Circle, Washington DC")




