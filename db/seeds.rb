require "open-uri"

User.destroy_all
Elf.destroy_all

User.create(first_name: "Paul", last_name: "Porte", phone_number: "0606066060", email: "test@test.com", password: "123456")

paul = User.create(first_name: "Paul", last_name: "Porte", phone_number: "0606066060", email: "paul@lewagon.com", password: "123456")
fama = User.create(first_name: "Fama", last_name: "Dilème", phone_number: "0606066061", email: "fama@lewagon.com", password: "123456")
romain = User.create(first_name: "Romain", last_name: "Chevallier ", phone_number: "0606066062", email: "romain@lewagon.com", password: "123456")
benoit = User.create(first_name: "Benoit", last_name: "Dcd", phone_number: "0606066063", email: "benoit@lewagon.com", password: "123456")
gordon = User.create(first_name: "Gordon", last_name: "Freeman", phone_number: "0606066064", email: "gordon@lewagon.com", password: "123456")

dobby = Elf.new(name: "Dobby", category: "Brave", age: "122", daily_price: "4", user: paul, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?", address: "6 allée du cormier")
file = URI.open('app/assets/images/dobby.png')
dobby.photo.attach(io: file, filename: "dobby.png", content_type: "image/png")
dobby.save

kreattur = Elf.new(name: "Kreattur", category: "NRV", age: "14", daily_price: "10", user: fama, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?", address: "2 rue de la paix")
file = URI.open('app/assets/images/kreacher.png')
kreattur.photo.attach(io: file, filename: "kreattur.png", content_type: "image/png")
kreattur.save

winky = Elf.new(name: "Winky", category: "Jardinage", age: "42", daily_price: "15", user: romain, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?", address: "12 rue de passy")
file = URI.open('app/assets/images/winky.jpeg')
winky.photo.attach(io: file, filename: "winky.jpeg", content_type: "image/jpeg")
winky.save

hokey = Elf.new(name: "Hokey", category: "Sportif", age: "5", daily_price: "4", user: benoit, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?", address: "5 place des victoires")
file = URI.open('app/assets/images/hokey.jpeg')
hokey.photo.attach(io: file, filename: "hokey.jpeg", content_type: "image/jpeg")
hokey.save

monique = Elf.new(name: "Monique", category: "Artiste", age: "500", daily_price: "30", user: gordon, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?", address: "52 avenue de l'opéra")
file = URI.open('app/assets/images/monique.jpeg')
monique.photo.attach(io: file, filename: "monique.jpeg", content_type: "image/jpeg")
monique.save

puts 'seed over'
