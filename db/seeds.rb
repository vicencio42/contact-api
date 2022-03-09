# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

contact1 = Contact.create(first_name: "James", last_name: "Dell", email: "jamesdell@example.com", phone_number: "3124445555")

contact2 = Contact.create(first_name: "Olivia", last_name: "Payne", email: "oliviapayne@example.com", phone_number: "3124445755")

contact3 = Contact.create(first_name: "Vin", last_name: "Valles", phone_number: "3123334444")

puts "All Done!"

