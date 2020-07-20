Listing.destroy_all
Reservation.destroy_all
# Review.destroy_all
User.destroy_all

amanda = User.create(name: "Amanda")

logan = User.create(name: "Logan")

katie = User.create(name: "Katie")

nyc = City.create(name: 'NYC')

Neighborhood.create(name: 'Fi Di', city: nyc)



Listing.create(
    address: '123 Main Street',
    listing_type: "private room",
    title: "Beautiful Apartment on Main Street",
    description: "My apartment is great. there's a bedroom. close to subway....blah blah",
    price: 50.00,
    host: amanda
)

listing = Listing.create(
    address: '6 Maple Street',
    listing_type: "shared room",
    title: "Shared room in apartment",
    description: "share a room with me because I'm poor",
    price: 15.00,
    host: katie
)


reservation = Reservation.create(
    checkin: '2014-04-25',
    checkout: '2014-04-30',
    listing: listing,
    guest: logan
  )

  

  Review.create(
    description: "Meh, the host I shared a room with snored.",
    rating: 3,
    guest: logan,
    reservation: reservation
  )




