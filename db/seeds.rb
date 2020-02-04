
puts "Clearing database..."

Booking.destroy_all
User.destroy_all
Plot.destroy_all

puts "Seeding database..."

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
u12 = User.create!(email: "jane@example.com", password:"okpass" )


p2 = Plot.new(name: "Happily Ever-After", description: "Let this beautiful tomb be the happy ending you always dreamed of.", location:"Berlin, Germany", price: 143)

p3 = Plot.new(name: "Buried Alive", description: "As fun as it sounds!", location:"Munich, Germany", price: 95)

p1 = Plot.new(name: "Glorious", description: "Dare to haunt the echoing chambers of this mausoluem and beyond. Fits many!", location:"Hamburg, Germany", price: 105)

p4 = Plot.new(name: "Lion's Heart", description: "The stone-carved lion is over 200 years-old. Let the value you or a loved-one had as a
 living person be captured by the heart-wrenching grief of this crying lion tomb.", location:"Hamburg, Germany", price: 155)

p5 = Plot.new(name: "The Whisperers", description: "There are strange things in these woods— or so it is whispered.
  Listen closely, and maybe you will hear...", location:"Stansdorf, Germany", price: 200)

p6 = Plot.new(name: "Kingdom by The Sea", description: "This quiant sea-side tomb is submerged in a perenial fog
  and haunted impeccably by the ghosts of the surrounding graves.", location:"Munich, Germany", price: 220)

p7 = Plot.new(name: "Rainbow Bridge", description: "These beautiful floral graves are a joyous celebration of
 the great cosmic, swirling, unknown.", location:"Munich, Germany", price: 95)

p8 = Plot.new(name: "Last Train to Glory", description: "The Arctic trails have their secret tales that would make
 your blood run cold. When it does, be sure to board the Last Train to Glory to warm your blood.", location:"Berlin, Germany", price: 250)

p9 = Plot.new(name: "Annabelle Lee", description: "For the dearly departed lover, Annabelle Lee represents love that
 was a muse, and a loss that can never be reconciled.", location:"Hamburg, Germany", price: 245)

p10 = Plot.new(name: "Davey Jones' Locker", description: "Be one of Davey Jones' captured souls!", location:"Nuremberg, Germany", price: 125)

p11 = Plot.new(name: "Swan Tree", description: "Cast off into eternity beneath the the beautiful Swan tree,
 which, legend has it, is forever in bloom.", location:"Liepzig, Germany", price: 75)

p12 = Plot.new(name: "No Tomorrow", description: "Live like there's no tomorrow. And when there actually is no tomorrow,
 die like you lived like there was no tomorrow— in an exquisite ancient-Roman-style crypt.", location:"Berlin, Germany", price: 75)


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
