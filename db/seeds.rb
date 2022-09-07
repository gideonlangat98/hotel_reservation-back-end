puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating hotels..."
kempinski = Hotel.create(name: "Kempinski", location: "Nairobi, Kenya", price: "50000")
olesereni = Hotel.create(name: "Olesereni", location: "Nairobi, Kenya", price: "40000")
hilton = Hotel.create(name: "Hilton", location: "Nairobi, Kenya", price: "60000")
serena = Hotel.create(name: "Serena", location: "Nairobi, Kenya", price: "70000")
west = Hotel.create(name: "West Wood Hotel", location: "Nairobi, Kenya", price: "550000")

puts "Creating customer_reviews"
review1 = Review.create(body: "Good place to stay. Clean place, modern room and nice staff", hotel_id: hilton.id)
review2 = Review.create(body: "Homely stay with lovely stay. Breakfast was tasty with lots of variety. Great location next to all of Nairobi's main attractions", hotel_id: olesereni.id)
review3 = Review.create(body: "The whole compound is like paradise with vast and very beautiful and peaceful garden", hotel_id: kempinski.id)
review4 = Review.create(body: "The most beautiful guest house with the most lovely, warm and welcoming hosts", hotel_id: west.id)
review5 = Review.create(body: "Really good breakfast, cozy rooms, good beds and very nice and helpful owners", hotel_id: serena.id)

puts "✅ Done seeding!"
