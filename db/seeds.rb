# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



customer1 =  Customer.create(name:"Emilia", last_name: "Lopez", email:"emilia@gmail.com", phone: 7893456, password: "moon", address:"Santiago 567")
customer2 = Customer.create(name:"Eduardo", last_name: "Solis", email:"eduardo@gmail.com", phone: 7893456, password: "winter", address:"Santiago 987")



event_venue1 = EventVenue.create(name: "Park", address: "Pucon 14", capacity:500)
event_venue2 = EventVenue.create(name: "Snow", address: "Punta Arenas 714", capacity:600)
event_venue3 = EventVenue.create(name: "Sky", address: "Santiago 98", capacity:100)

event1 = Event.create(name: "Moon" ,description: "empty" , star_date: Date.new(2020,5,12) ,event_venue:event_venue1)
event2 = Event.create(name:"Winter" ,description: "empty" , star_date: Date.new(2021,6,17) ,event_venue:event_venue2)
event3 =Event.create(name:"Sunset" ,description: "empty" , star_date:Date.new(2020,5,12) ,event_venue:event_venue3)


order1 = Order.create(customer:customer1, number_order: 1)
order2 = Order.create(customer:customer2, number_order: 2)
order3 = Order.create(customer:customer1, number_order: 3)
order4 = Order.create(customer:customer2, number_order: 4)

ticket1 = Ticket.create(name: "gold", event:event1, price:5000)
ticket2 = Ticket.create(name: "general", event:event1, price:500)
ticket3 = Ticket.create(name: "gold", event:event2, price:5000)
ticket4 = Ticket.create(name: "general", event:event2, price:500)
ticket5 = Ticket.create(name: "gold", event:event3, price:5000)
ticket6 = Ticket.create(name: "general", event:event3, price:500)
