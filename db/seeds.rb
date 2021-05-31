# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.create!([
  {name: "Devon",
  address: "Shop 1, 37 Lavender Street, Baranagaroo, Sydney",
  phone: "02 9000 1234",
  website: "http://www.devon.com.au",
  owner: "Maruki Satoichi",
  description: "Japan does coffee just everywhere else",
  capacity: 48,
  status: "Open",
    image_file_name: 'Toby.jpg'},
  {name: "The Shirt Bar",
  address: "Shop 21, 13 Stevedore Place, Baranagaroo, Sydney",
  phone: "02 9000 1225",
  website: "http://www.theshirtbar.com.au",
  owner: "Greg Stafford",
  description: "Sofistication-plus.  A shirt bar, coffee bar and whiskey bar all in one place",
  capacity: 30,
  status: "Open",
    image_file_name: 'shirtbar.jpg'},
  {name: "Marble Jeans",
  address: "Shop 15, Tower Two, Baranagaroo, Sydney",
  phone: "02 9000 1133",
  website: "http://www.marblejeans.com.au",
  owner: "Jean Tuckwell",
  description: "A grand place to splash out and lounge around in the big open spaces",
  capacity: 120,
  status: "Open",
    image_file_name: 'mycafe.png'},
  {name: "Singos",
  address: "Shop 31, 1 Forever Gardens, Baranagaroo, Sydney",
  phone: "02 9000 1119",
  website: "http://www.singoscafe.com.au",
  owner: "John Singleton",
  description: "Have a coffee, have a punt and see who the real winner is",
  capacity: 150,
  status: "Open",
    image_file_name: 'logo3.png'}
  ])
