require "open-uri"

User.destroy_all
Elf.destroy_all
Review.destroy_all

User.create(first_name: "Paul", last_name: "Porte", phone_number: "0606066060", email: "test@test.com", password: "123456")

paul = User.create(first_name: "Paul", last_name: "Porte", phone_number: "0606066060", email: "paul@lewagon.com", password: "123456")
fama = User.create(first_name: "Fama", last_name: "Dilème", phone_number: "0606066061", email: "fama@lewagon.com", password: "123456")
romain = User.create(first_name: "Romain", last_name: "Chevallier ", phone_number: "0606066062", email: "romain@lewagon.com", password: "123456")
benoit = User.create(first_name: "Benoit", last_name: "Dcd", phone_number: "0606066063", email: "benoit@lewagon.com", password: "123456")
gordon = User.create(first_name: "Gordon", last_name: "Freeman", phone_number: "0606066064", email: "gordon@lewagon.com", password: "123456")

dobby = Elf.new(name: "Dobby", category: "Artiste", age: "122", daily_price: "4", user: paul, description: "Artiste accompli, Dobby apporte créativité et magie à chaque tâche, transformant les travaux ménagers en œuvres d'art uniques et enchantées.", address: "6 allée du cormier")
file = URI.open('app/assets/images/dobby.png')
dobby.photo.attach(io: file, filename: "dobby.png", content_type: "image/png")
dobby.save

kreattur = Elf.new(name: "Kreattur", category: "Jardinier", age: "14", daily_price: "10", user: fama, description: "Spécialisé en jardinage, il entretient les jardins avec soin et expertise, cultivant plantes et fleurs avec une touche magique qui fait prospérer toute végétation.", address: "2 rue de la paix")
file = URI.open('app/assets/images/kreacher.png')
kreattur.photo.attach(io: file, filename: "kreattur.png", content_type: "image/png")
kreattur.save

winky = Elf.new(name: "Winky", category: "Chauffeur", age: "42", daily_price: "15", user: romain, description: "Chauffeur expérimenté, il assure des trajets sûrs et confortables, alliant ponctualité et discrétion avec une touche de magie pour des voyages sans encombre.", address: "12 rue de passy")
file = URI.open('app/assets/images/winky.jpeg')
winky.photo.attach(io: file, filename: "winky.jpeg", content_type: "image/jpeg")
winky.save

hokey = Elf.new(name: "Hokey", category: "Coach Sportif", age: "5", daily_price: "4", user: benoit, description: "Spécialisé en coaching sportif, il motive et entraîne avec enthousiasme, apportant une énergie débordante et des conseils magiques pour améliorer vos performances sportives.", address: "5 place des victoires")
file = URI.open('app/assets/images/hokey.jpeg')
hokey.photo.attach(io: file, filename: "hokey.jpeg", content_type: "image/jpeg")
hokey.save

monique = Elf.new(name: "Monique", category: "Artiste", age: "500", daily_price: "30", user: gordon, description: "Artiste de renom, elle apporte une expertise artistique inégalée, créant des œuvres magistrales et enchantées qui transforment n'importe quel espace en une galerie de magie et de beauté.", address: "52 avenue de l'opéra")
file = URI.open('app/assets/images/monique.jpeg')
monique.photo.attach(io: file, filename: "monique.jpeg", content_type: "image/jpeg")
monique.save

lucas = Elf.new(name: "Lucas", category: "Cuisinie", age: "250", daily_price: "20", user: gordon, description: "Cuisinier exceptionnel, il prépare des plats magiques et délicieux, transformant chaque repas en une expérience culinaire inoubliable.", address: "14 rue des délices")
file = URI.open('app/assets/images/dobby.png')
lucas.photo.attach(io: file, filename: "dobby.png", content_type: "image/png")
lucas.save

elara = Elf.new(
  name: "Elara",
  category: "Ménage",
  age: "300",
  daily_price: "15",
  user: gordon,
  description: "Ménagère experte, elle maintient votre maison dans un état impeccable, apportant une touche de magie à chaque tâche ménagère.",
  address: "23 rue des Charmes"
)
file = URI.open('app/assets/images/monique.jpeg')
elara.photo.attach(io: file, filename: "monique.jpeg", content_type: "image/jpeg")
elara.save

thranduil = Elf.new(
  name: "Thranduil",
  category: "Ménage",
  age: "450",
  daily_price: "25",
  user: gordon,
  description: "Bibliothécaire érudit, il organise et entretient vos collections de livres avec une précision magique, transformant votre bibliothèque en un havre de connaissance.",
  address: "17 rue des Sages"
)
file = URI.open('app/assets/images/kreacher.png')
thranduil.photo.attach(io: file, filename: "kreattur.png", content_type: "image/png")
thranduil.save

arwen = Elf.new(
  name: "Arwen",
  category: "Nounou",
  age: "200",
  daily_price: "50",
  user: gordon,
  description: "Nounou dévouée, elle veille sur vos enfants avec une attention et une magie bienveillantes, créant un environnement sûr et enchanté pour leur épanouissement.",
  address: "7 boulevard des Protecteurs"
)
file = URI.open('app/assets/images/monique.jpeg')
arwen.photo.attach(io: file, filename: "monique.jpeg", content_type: "image/jpeg")
arwen.save

puts 'seed over'
