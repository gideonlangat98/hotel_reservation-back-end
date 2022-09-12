puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating hotels..."
room1 = Hotel.create(name: "Deluxe room", location: "Nairobi, Kenya", price: "30000")
room2 = Hotel.create(name: "single room", location: "Nairobi, Kenya", price: "40000")
room3 = Hotel.create(name: "Family room", location: "Nairobi, Kenya", price: "60000")
room4 = Hotel.create(name: "Twin Bed room", location: "Nairobi, Kenya", price: "70000")

puts "Creating customer_reviews"
review1 = Review.create(body: "Good place to stay. Clean place, modern room and nice staff", hotel_id: room1.id)
review2 = Review.create(body: "Homely stay with lovely stay. Breakfast was tasty with lots of variety. Great location next to all of Nairobi's main attractions", hotel_id: room2.id)
review3 = Review.create(body: "The whole compound is like paradise with vast and very beautiful and peaceful garden", hotel_id: room3.id)
review4 = Review.create(body: "The most beautiful guest house with the most lovely, warm and welcoming hosts", hotel_id: room3.id)
review5 = Review.create(body: "Really good breakfast, cozy rooms, good beds and very nice and helpful owners", hotel_id: room4.id)

puts "✅ Done seeding!"
