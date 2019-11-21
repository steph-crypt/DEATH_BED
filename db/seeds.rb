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

Booking.destroy_all
User.destroy_all
Plot.destroy_all

puts "Seeding database..."

# object.remote_photo_url = urls 1

u1 = User.create!(email: "janet@example.com", password:"badpass" )
u2 = User.create!(email: "john@example.com", password:"goodpass" )
u3 = User.create!(email: "jeff@example.com", password:"okpass" )
u4 = User.create!(email: "jenny@example.com", password:"badpass" )
u5 = User.create!(email: "josh@example.com", password:"goodpass" )
u6 = User.create!(email: "jill@example.com", password:"okpass" )
u7 = User.create!(email: "josephine@example.com", password:"badpass" )
u8 = User.create!(email: "jacob@example.com", password:"goodpass" )
u9 = User.create!(email: "jillian@example.com", password:"okpass" )
u10 = User.create!(email: "jake@example.com", password:"badpass" )
u11 = User.create!(email: "jeremy@example.com", password:"goodpass" )
u12 = User.create!(email: "jesus@example.com", password:"okpass" )


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

p4 = Plot.new(name: "Lion's Heart", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Hamburg, Germany")

p5 = Plot.new(name: "The Whisperers", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Stansdorf, Germany")

p6 = Plot.new(name: "Kingdom by The Sea", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Munich, Germany")

p7 = Plot.new(name: "Rainbow Bridge", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Bern, Switzerland")

p8 = Plot.new(name: "Last Train to Glory", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Berlin, Germany")

p9 = Plot.new(name: "Annabelle Lee", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Hamburg, Germany")

p10 = Plot.new(name: "Davey Jones' Locker", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Nuremberg, Germany")

p11 = Plot.new(name: "Swan Tree", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Liepzig, Germany")

p12 = Plot.new(name: "No Tomorrow", description: "There are strange things done in the midnight sun
By the men who moil for gold; The Arctic trails have their secret tales that would make your blood run cold;
The Northern Lights have seen queer sights, but the queerest they ever did see
Was that night on the marge of Lake Lebarge when I cremated Sam McGee.
Now Sam McGee was from Tennessee, where the cotton blooms and blows.
Why he left his home in the South to roam 'round the Pole, God only knows.
He was always cold, but the land of gold seemed to hold him like a spell;
Though he'd often say in his homely way that 'he'd sooner live in hell.'", location:"Berlin, Germany")


p1.user = u1
p2.user = u2
p3.user = u3
p4.user = u4
p5.user = u5
p6.user = u6
p7.user = u7
p8.user = u8
p9.user = u9
p10.user = u10
p11.user = u11
p12.user = u12


photo_url = "https://media-cdn.tripadvisor.com/media/photo-s/0a/ba/95/ae/beautiful-mausoleum.jpg"
p1.remote_photo_url = photo_url
p1.save!

photo_url = "https://i.pinimg.com/originals/2e/19/c3/2e19c3b744304733eda8ebf2bdd5689b.jpg"
p2.remote_photo_url = photo_url
p2.save!

photo_url = "https://i.pinimg.com/564x/71/e5/03/71e503fae4cda7493c34e18795c9e32c.jpg"
p3.remote_photo_url = photo_url
p3.save!

photo_url = "https://thevelvetrocket.files.wordpress.com/2008/06/weeping-lion-confederate-memorial.jpg"
p4.remote_photo_url = photo_url
p4.save!

photo_url = "https://farm5.staticflickr.com/4086/4949781517_fdc19e21d6_z.jpg"
p5.remote_photo_url = photo_url
p5.save!

photo_url = "https://nerdywithchildren.com/wp-content/uploads/2012/10/haunted-cemetary.jpg"
p6.remote_photo_url = photo_url
p6.save!

photo_url = "https://c8.alamy.com/comp/H42F42/chapel-and-cemetery-of-isenthal-a-village-in-the-swiss-alps-graves-H42F42.jpg"
p7.remote_photo_url = photo_url
p7.save!

photo_url = "http://66.media.tumblr.com/tumblr_m2y9hsvUyo1qefh0ao1_1280.jpg"
p8.remote_photo_url = photo_url
p8.save!

photo_url = "https://i.pinimg.com/originals/ef/6b/7f/ef6b7f267dc21943ea54ebd4ebfcea9f.jpg"
p9.remote_photo_url = photo_url
p9.save!

photo_url = "https://i.pinimg.com/originals/6b/f1/54/6bf1544dca006daec2a28fc8c694fc9b.jpg"
p10.remote_photo_url = photo_url
p10.save!

photo_url = "https://cemeterytravel.files.wordpress.com/2012/05/swan-pt-tree001.jpg"
p11.remote_photo_url = photo_url
p11.save!

photo_url = "https://farm5.staticflickr.com/4045/4642626510_e0da134845_z.jpg"
p12.remote_photo_url = photo_url
p12.save!

puts "Seeded database"

# Faker::Ancient.titan,
# Faker::TvShows::Buffy.big_bad"@example.com"


