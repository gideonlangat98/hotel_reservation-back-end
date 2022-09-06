puts "🌱 Seeding spices..."

# Seed your database here
#hotels
kempinski = Hotel.create(name: "Kempinski", location: "Nairobi, Kenya", price: 50,000)
olesereni = Hotel.create(name: "Olesereni", loaction: "Nairobi, Kenya", price: 40,000)
hilton = Hotel.create(name: "Hilton", location: "Nairobi, Kenya", price: 60,000)

#reviews
review1 = CustomerReview.create(comment: "Good place to stay ·  Clean place, modern room and nice staff")
review2 = CustomerReview.create(comment: "Homely stay with lovely stay. Breakfast was tasty with lots of variety. Great location next to all of Nairobi's main attractions")
review3 = CustomerReview.create(comment: "The whole compound is like paradise with vast and very beautiful and peaceful garden")
review4 = CustomerReview.create(comment: "The most beautiful guest house with the most lovely, warm and welcoming hosts")
review5 = CustomerReview.create(comment: "Really good breakfast, cozy rooms, good beds and very nice and helpful owners")


puts "✅ Done seeding!"
