puts "deleting old"
Destination.all.destroy_all
Trip.all.destroy_all
Stop.all.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here
puts "creating destinations"
d1= Destination.create(name:"inks lake",location:"Texas",description:"Swimming,RPR,Spider Mountian")
d2= Destination.create(name:"loveland",location:"Colorado",description:"Best skiing ever!")
d3= Destination.create(name:"Whistler Bike Park",location:"British Columbia",description:"Biggest bike park")
d4= Destination.create(name:"Peru",location:"South America",description:"Machu Pichu")
d5= Destination.create(name:"Germany",location:"Europe",description:"Family,soccer")
 puts "creating trips"
 t1 = Trip.create(title:"Biking", description:"biking in texas and canada!!",start_date:(Date.new(2022, 6, 1)),end_date:Date.new(2022, 6, 10))
 t2 = Trip.create(title:"Colorado Ski", description:"Going to loveland!!!",start_date:(Date.new(2023, 1, 2)),end_date:Date.new(2022, 1, 7))
 t3 = Trip.create(title:"International", description:"South america and germany!!",start_date:(Date.new(2022, 8, 15)),end_date:Date.new(2023, 1, 3))
puts "creating stops"

s1= Stop.create(destination_id:d1[:id], trip_id:t1[:id],arrival:(Date.new(2022, 6, 2)),departure:(Date.new(2022, 6, 3)))
s2 =Stop.create(destination_id:d3[:id], trip_id:t1[:id],arrival:(Date.new(2022, 6, 7)),departure:(Date.new(2022, 6, 9)))
s3 =Stop.create(destination_id:d2[:id], trip_id:t2[:id],arrival:(Date.new(2023, 1, 3)),departure:(Date.new(2023, 1, 7)))
s4 =Stop.create(destination_id:d4[:id], trip_id:t3[:id],arrival:(Date.new(2022, 6, 2)),departure:(Date.new(2022, 6, 3)))
s5 =Stop.create(destination_id:d5[:id], trip_id:t3[:id],arrival:(Date.new(2022, 8, 15)),departure:(Date.new(2023, 1, 3)))




puts "✅ Done seeding!"
