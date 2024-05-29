# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.destroy_all
Elf.destroy_all

User.create(first_name: "Paul", last_name: "Porte", phone_number: "0606066060", email: "test@test.com", password: "123456")

paul = User.create(first_name: "Paul", last_name: "Porte", phone_number: "0606066060", email: "paul@lewagon.com", password: "123456")
fama = User.create(first_name: "Fama", last_name: "Dilème", phone_number: "0606066061", email: "fama@lewagon.com", password: "123456")
romain = User.create(first_name: "Romain", last_name: "Chevallier ", phone_number: "0606066062", email: "romain@lewagon.com", password: "123456")
benoit = User.create(first_name: "Benoit", last_name: "Dcd", phone_number: "0606066063", email: "benoit@lewagon.com", password: "123456")
gordon = User.create(first_name: "Gordon", last_name: "Freeman", phone_number: "0606066064", email: "gordon@lewagon.com", password: "123456")

dobby = Elf.create(name: "Dobby", category: "Brave", age: "122", daily_price: "4", user_id: 1, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?")
kreattur = Elf.create(name: "Kreattur", category: "NRV", age: "14", daily_price: "10", user_id: 2, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?")
winky = Elf.create(name: "Winky", category: "Jardinage", age: "42", daily_price: "15", user_id: 3, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?")
hokey = Elf.create(name: "Hokey", category: "Sportif", age: "5", daily_price: "4", user_id: 4, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?")
monique = Elf.create(name: "Monique", category: "Artiste", age: "500", daily_price: "30", user_id: 5, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam modi iure vel illum velit similique corrupti doloremque, ratione reiciendis, aspernatur ea officia saepe sed qui veritatis commodi mollitia ex nihil?")
