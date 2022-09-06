puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating hotels..."
kempinski = Hotel.create(name: "Kempinski", location: "Nairobi, Kenya", price: "50000")
olesereni = Hotel.create(name: "Olesereni", location: "Nairobi, Kenya", price: "40000")
hilton = Hotel.create(name: "Hilton", location: "Nairobi, Kenya", price: "60000")

puts "Creating customer_reviews"
review1 = CustomerReview.create(comment: "Good place to stay. Clean place, modern room and nice staff", hotel_id: kempinski.id)
review2 = CustomerReview.create(comment: "Homely stay with lovely stay. Breakfast was tasty with lots of variety. Great location next to all of Nairobi's main attractions", hotel_id: olesereni.id)
review3 = CustomerReview.create(comment: "The whole compound is like paradise with vast and very beautiful and peaceful garden", hotel_id: hilton.id)
# review4 = CustomerReview.create(comment: "The most beautiful guest house with the most lovely, warm and welcoming hosts")
# review5 = CustomerReview.create(comment: "Really good breakfast, cozy rooms, good beds and very nice and helpful owners")

puts "✅ Done seeding!"
