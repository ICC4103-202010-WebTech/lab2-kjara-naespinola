# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer3 = Customer.create(name:"sofia", last_name: "Gonzales", email: "sgonzales@gmail.com", phone: 123456789,
                            password: "password", address: "Calle 123")

customer2 = Customer.create(name:"Juanito", last_name: "Perez", email: "jperezs@gmail.com", phone: 123456789,
                            password: "word", address: "Calle 321")

eventVenue1 = EventVenue.create(name: "venue1", address: "address1", capacity: 100)
eventVenue2 = EventVenue.create(name: "venue2", address: "address2", capacity: 200)
eventVenue3 = EventVenue.create(name: "venue3", address: "address3", capacity: 300)

event1 = Event.create(name: "event1", description:"description1", start_date: Date.new(2020,5,3),
                      event_venue: eventVenue1)
event2 = Event.create(name: "event2", description:"description2", start_date: Date.new(2020,6,30),
                      event_venue: eventVenue2)
event3 = Event.create(name: "event3", description:"description3", start_date: Date.new(2020,7,20),
                      event_venue: eventVenue3)

ticket11 = TicketType.create(event: event1, name: "general", price: 10)
ticket12 = TicketType.create(event: event1, name: "golden", price: 20)
ticket21 = TicketType.create(event: event2, name: "general", price: 100)
ticket22 = TicketType.create(event: event2, name: "golden", price: 200)
ticket31 = TicketType.create(event: event3, name: "general", price: 1000)
ticket32 = TicketType.create(event: event3, name: "golden", price: 2000)

order1 = Order.create(customer: customer2, number_order: 1)
order2 = Order.create(customer: customer2, number_order: 2)
order3 = Order.create(customer: customer3, number_order: 11)
order4 = Order.create(customer: customer3, number_order: 22)

orderTicket1 = OrderTicket.create(ticket_type: ticket11, quantity: 1, order: order1)
orderTicket2 = OrderTicket.create(ticket_type: ticket12, quantity: 2, order: order1)
orderTicket3 = OrderTicket.create(ticket_type: ticket21, quantity: 3, order: order2)
orderTicket4 = OrderTicket.create(ticket_type: ticket22, quantity: 4, order: order2)
orderTicket5 = OrderTicket.create(ticket_type: ticket31, quantity: 5, order: order3)
orderTicket6 = OrderTicket.create(ticket_type: ticket32, quantity: 6, order: order3)
orderTicket1 = OrderTicket.create(ticket_type: ticket11, quantity: 10, order: order4)
orderTicket2 = OrderTicket.create(ticket_type: ticket12, quantity: 20, order: order4)
