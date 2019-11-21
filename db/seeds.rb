# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# url1 = ...

# object1 = Object.new (

# {
#   name: asdfaf

# }

#   )
puts "Clearing database..."



puts "Seeding database..."

# object.remote_photo_url = urls 1

u1 = User.create!(email: "janet@example.com", password:"badpass" )
u2 = User.create!(email: "john@example.com", password:"goodpass" )
u3 = User.create!(email: "jeff@example.com", password:"okpass" )

p2 = Plot.new(name: "Happy Ending", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Berlin, Germany")

p3 = Plot.new(name: "Buried Alive", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Munich, Germany")

p1 = Plot.new(name: "Glorious Hole", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Hamburg, Germany")

p1.user = u1
p2.user = u2
p3.user = u3

photo_url = "https://media-cdn.tripadvisor.com/media/photo-s/0a/ba/95/ae/beautiful-mausoleum.jpg"
p1.remote_photo_url = photo_url
p1.save!

photo_url = "https://i.pinimg.com/originals/2e/19/c3/2e19c3b744304733eda8ebf2bdd5689b.jpg"
p2.remote_photo_url = photo_url
p2.save!

photo_url = "https://i.pinimg.com/564x/71/e5/03/71e503fae4cda7493c34e18795c9e32c.jpg"
p3.remote_photo_url = photo_url
p3.save!

puts "Seeded database"

# Faker::Ancient.titan,
# Faker::TvShows::Buffy.big_bad"@example.com"


