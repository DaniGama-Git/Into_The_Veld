# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Car.destroy_all
User.destroy_all

# Creating Users
User.create(name: 'John', surname: 'Doe', email: 'john@example.com', password: 'password', address: '123 Main St')
User.create(name: 'Jane', surname: 'Smith', email: 'jane@example.com', password: 'password', address: '456 Elm St')

# Creating Cars
car_1 = Car.create(title: 'Rugged Beast', description: 'Conquer any terrain with this powerful 4x4.', price: 9999.99, available: true, make: 'Land Rover', model: 'Range Rover', accomodation: true, cooking: true, seats: 5, consumption: 15, user_id: User.all.sample.id)
car_2 = Car.create(title: 'Off-Road King', description: 'Unleash the adventurer in you with this off-road powerhouse.', price: 6499.99, available: true, make: 'Jeep', model: 'Wrangler', accomodation: false, cooking: false, seats: 4, consumption: 20, user_id: User.all.sample.id)
car_3 = Car.create(title: 'Mountain Explorer', description: 'Experience the thrill of exploring mountains with this reliable 4x4.', price: 5699.99, available: true, make: 'Toyota', model: '4Runner', accomodation: true, cooking: false, seats: 5, consumption: 18, user_id: User.all.sample.id)
car_4 = Car.create(title: 'Wilderness Voyager', description: 'Embark on unforgettable wilderness adventures with this rugged vehicle.', price: 7399.99, available: true, make: 'Ford', model: 'F-150 Raptor', accomodation: true, cooking: true, seats: 4, consumption: 14, user_id: User.all.sample.id)
car_5 = Car.create(title: 'All-Terrain Explorer', description: 'Discover the world in style and comfort with this versatile 4x4.', price: 6899.99, available: true, make: 'Mercedes-Benz', model: 'G-Class', accomodation: true, cooking: true, seats: 5, consumption: 16, user_id: User.all.sample.id)
car_6 = Car.create(title: 'Rock Crawler', description: 'Take on the most challenging rock formations with this capable off-roader.', price: 5999.99, available: true, make: 'Chevrolet', model: 'Colorado ZR2', accomodation: false, cooking: false, seats: 4, consumption: 22, user_id: User.all.sample.id)
car_7 = Car.create(title: 'Adrenaline Rush', description: 'Experience the thrill of speed and adventure with this adrenaline-inducing 4x4.', price: 7899.99, available: true, make: 'Porsche', model: 'Cayenne Turbo S', accomodation: false, cooking: false, seats: 5, consumption: 19, user_id: User.all.sample.id)
# Attaching photos to cars

file_1 = URI.open("https://bdc2020.o0bc.com/wp-content/uploads/2018/05/2018-land-rover-discovery-svx-is-a-supercharged-v8-powered-off-road-warrior-120348_1.jpg")
car_1.photo.attach(io: file_1, filename: "car_1.jpg", content_type: "image/jpg")
