# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all couples"
Couple.destroy_all
puts "destroying all users"
User.destroy_all

puts "creating user  Michel"

michel = User.new
michel.fullname ="Michel Delpeche"
#michel.photo = 'https://res.cloudinary.com/duro4nxuo/image/upload/v1566292945/images%20seed%20parhunt/michel_kogojk.jpg'
michel.email = "micheldelpeche@gmail.com"
michel.password = "qwerty"
michel.save!

puts "creating user  Jessica"

jessica = User.new
jessica.fullname ="Jessica Down"
#jessica.remote_photo_url = 'https://res.cloudinary.com/duro4nxuo/image/upload/v1566292969/images%20seed%20parhunt/jessica_yayxpz.jpg'
jessica.email = "jessicadown@gmail.com"
jessica.password = "qwerty"
jessica.save!

puts "creating user Maxence"

maxence = User.new
maxence.fullname ="maxence Delpeche"
#maxence.remote_photo_url = 'https://res.cloudinary.com/duro4nxuo/image/upload/v1566291615/images%20seed%20parhunt/maxence_mymvmu.jpg'
maxence.email = "maxencedelpeche@gmail.com"
maxence.password = "qwerty"
maxence.save!

puts "creating user lou"

lou = User.new
lou.fullname ="Lou Up"
#lou.remote_photo_url = 'https://res.cloudinary.com/duro4nxuo/image/upload/v1566291629/images%20seed%20parhunt/lou_x8trm1.jpg'
lou.email = "louwelgryn@gmail.com"
lou.password = "qwerty"
lou.save!

puts "creating couple durand"

durand = Couple.new
durand.name = 'Durand'
durand.nickname = 'les Dudu'
durand.address = '14 rue de Bruxelles, 75009'
durand.price = '123'
durand.description = "vivre d'amour et d'eeau fraiche"
durand.best_quality = "humour"
durand.worst_default = "machisme"
durand.user = michel
durand.skills = "ménage, blagues salaces, spaghettis au pesto"
durand.remote_photo_url ='https://res.cloudinary.com/duro4nxuo/image/upload/v1566291732/images%20seed%20parhunt/durand_w7m7rh.jpg'
durand.save!

puts "creating couple dupont"

dupont = Couple.new
dupont.name = "Dupont"
dupont.nickname = "Tic et Tac"
dupont.address = "10 rue des petites écuries, 75010 Paris"
dupont.price = "231"
dupont.description = "Nous sommes de retour pour vous jouer un mauvais tour"
dupont.best_quality = "L'amouuur"
dupont.worst_default = "L'humour"
dupont.user = maxence
dupont.skills = "Ménage, petits plats cuisinés avec amour"
dupont.remote_photo_url = 'https://res.cloudinary.com/duro4nxuo/image/upload/v1566291729/images%20seed%20parhunt/dupont_wjjwv6.jpg'
dupont.save!

puts "creating couple stoppa"

stoppa = Couple.new
stoppa.name = "Stoppa"
stoppa.nickname = "SToppapaaaa"
stoppa.address = "58 rue de londres, 75008 Paris"
stoppa.price = "23"
stoppa.description = "Ne pariez jamais que vous ne les louerez qu'une fois"
stoppa.best_quality = "chasseurs hors pairs"
stoppa.worst_default = "laissent trainer leurs chaussettes"
stoppa.user = jessica
stoppa.skills = "blagues fines, patisseries (surtout la tarte aux abricots)"
stoppa.remote_photo_url = 'https://res.cloudinary.com/duro4nxuo/image/upload/v1566291737/images%20seed%20parhunt/stoppa_cp6hbf.jpg'
stoppa.save!

puts "creating couple gaillard"

gaillard = Couple.new
gaillard.name = "Gaillard"
gaillard.nickname = "Les Gagas"
gaillard.address = "10 rue beaurepaire, 75010 Paris"
gaillard.price = "450"
gaillard.description = "Toujours le mot pour rire"
gaillard.best_quality = "Empathie"
gaillard.worst_default = "Empathie"
gaillard.user = lou
gaillard.skills = "le repassage, le ménage et surtout le décrassage"
gaillard.remote_photo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566291740/images%20seed%20parhunt/gaillard_d8n6kc.jpg"
gaillard.save!

puts "Finished !"


