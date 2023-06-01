require "open-uri"
Booking.destroy_all
Car.destroy_all
User.destroy_all

# Creating Users
User.create(name: 'John', surname: 'Doe', email: 'john@example.com', password: 'password', address: '123 Main St')
User.create(name: 'Jane', surname: 'Smith', email: 'jane@example.com', password: 'password', address: '456 Elm St')

# Creating Cars
car_1 = Car.create(title: 'Rugged Beast', description: 'Conquer any terrain with this powerful 4x4.', price: 7000, available: true, make: 'Land Rover', model: 'Range Rover', accomodation: true, cooking: true, seats: 5, consumption: 15, user_id: User.all.sample.id)
car_2 = Car.create(title: 'Off-Road King', description: 'Unleash the adventurer in you with this off-road powerhouse.', price: 6500, available: true, make: 'Jeep', model: 'Wrangler', accomodation: false, cooking: false, seats: 4, consumption: 20, user_id: User.all.sample.id)
car_3 = Car.create(title: 'Mountain Explorer', description: 'Experience the thrill of exploring mountains with this reliable 4x4.', price: 5000, available: true, make: 'Toyota', model: '4Runner', accomodation: true, cooking: false, seats: 5, consumption: 18, user_id: User.all.sample.id)
car_4 = Car.create(title: 'Wilderness Voyager', description: 'Embark on unforgettable wilderness adventures with this rugged vehicle.', price: 7200, available: true, make: 'Ford', model: 'F-150 Raptor', accomodation: true, cooking: true, seats: 4, consumption: 14, user_id: User.all.sample.id)
car_5 = Car.create(title: 'All-Terrain Explorer', description: 'Discover the world in style and comfort with this versatile 4x4.', price: 6100, available: true, make: 'Mercedes-Benz', model: 'G-Class', accomodation: true, cooking: true, seats: 5, consumption: 16, user_id: User.all.sample.id)
car_6 = Car.create(title: 'Rock Crawler', description: 'Take on the most challenging rock formations with this capable off-roader.', price: 5000, available: true, make: 'Land Rover', model: 'Defender', accomodation: true, cooking: true, seats: 4, consumption: 22, user_id: User.all.sample.id)
car_7 = Car.create(title: 'Home', description: 'Experience the thrill of speed and adventure with this adrenaline-inducing 4x4.', price: 7200, available: true, make: 'Land Rover', model: 'Defender', accomodation: true, cooking: false, seats: 7, consumption: 19, user_id: User.all.sample.id)

# Attaching photos to cars

# Attaching photos to car_1
file_1 = URI.open("https://mrfeelgood.com/wp-content/uploads/2022/08/1993-Range-Rover-Classic_3-scaled.jpeg")
car_1.photos.attach(io: file_1, filename: "car_1.jpg", content_type: "image/jpg")
file_2 = URI.open("https://i.pinimg.com/originals/67/a0/cf/67a0cfdc2524f78ad56683bc74ece23e.jpg")
car_1.photos.attach(io: file_2, filename: "car_1.jpg", content_type: "image/jpg")

# Attaching photos to car_2
file_3 = URI.open("https://img-ik.cars.co.za/news-site-za/images/2021/01/IMG_20200913_101623.jpg")
car_2.photos.attach(io: file_3, filename: "car_1.jpg", content_type: "image/jpg")
file_4 = URI.open("https://images.ctfassets.net/uaddx06iwzdz/35bKc62ZIv09aiP0NWxfb5/23596dced9075cf4b8aa8104b59a2708/jeep-wrangler-back.jpg")
car_2.photos.attach(io: file_4, filename: "car_1.jpg", content_type: "image/jpg")

# Attaching photos to car_3
file_5 = URI.open("https://images.hgmsites.net/lrg/2020-toyota-4runner_100719001_l.jpg")
car_3.photos.attach(io: file_5, filename: "car_1.jpg", content_type: "image/jpg")
file_6 = URI.open("https://www.cnet.com/a/img/resize/b6dfe728a212cba28cfc5bac82497072bc1f80bd/hub/2020/01/11/02c3d52b-d14b-43d4-9315-80ac384e8621/2020-toyota-4runner-9.jpg?auto=webp&width=1200")
car_3.photos.attach(io: file_6, filename: "car_1.jpg", content_type: "image/jpg")

# Attaching photos to car_4
file_7 = URI.open("https://hips.hearstapps.com/hmg-prod/images/2023-f-150-raptor-r-exterior-antimatter-blue-01-1657815477.jpg?crop=0.400xw:1.00xh;0.500xw,0&resize=1200:*")
car_4.photos.attach(io: file_7, filename: "car_1.jpg", content_type: "image/jpg")
file_8 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjo8j7rRnZTEk2q7OW5x1jt_eAC5TY6aGJOHG9QK2X8HrQ0gEMiUHtdzYx9XcKrdayj28&usqp=CAU")
car_4.photos.attach(io: file_8, filename: "car_1.jpg", content_type: "image/jpg")

# Attaching photos to car_5
file_9 = URI.open("https://cdn.motor1.com/images/mgl/E7w0R/s1/mercedes-benz-g-class-goodbye.jpg")
car_5.photos.attach(io: file_9, filename: "car_1.jpg", content_type: "image/jpg")
file_10 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuCDVidDIX8I6Q2SYhngRsxWPKNxaOFsjMDam5zY2kZpCOtsV4RP-okyCwSNwwgp0K-w0&usqp=CAU")
car_5.photos.attach(io: file_10, filename: "car_1.jpg", content_type: "image/jpg")

# Attaching photos to car_6
file_11 = URI.open("https://i.ytimg.com/vi/Uqs78q7XFTg/maxresdefault.jpg")
car_6.photos.attach(io: file_11, filename: "car_1.jpg", content_type: "image/jpg")
file_12 = URI.open("https://img.autotrader.co.za/23033694/Crop360x270")
car_6.photos.attach(io: file_12, filename: "car_1.jpg", content_type: "image/jpg")

# Attaching photos to car_7
file_13 = URI.open("https://media.jlrms.com/2020-06-19/image/77f89c3e-b8c6-44cd-af45-ba1197cc0e7e/LAND%20ROVER%20AND%20AUTOHOME%20CREATE%20RUGGED%20ROOF%20TENT%20FOR%20NEW%20DEFENDER%20%20%286%29.jpg?VersionId=aVyEWLRmVPSoHgIRmwo0Gh6cq_VczCov")
car_7.photos.attach(io: file_13, filename: "car_1.jpg", content_type: "image/jpg")
file_14 = URI.open("https://i.dailymail.co.uk/1s/2020/06/22/12/29908724-8446969-Sleeper_SUV_Customers_can_now_order_a_roof_tent_for_their_Land_R-a-2_1592823670420.jpg")
car_7.photos.attach(io: file_14, filename: "car_1.jpg", content_type: "image/jpg")
