def cafe_attributes(overrides={})
{
  name:"Tres Hombres",
  description: "What a lovely little place",
  address:"Unit 7, 31 Ambling Drive, Barangaroo, Sydney",
  phone: "02 9000 1000",
  website: "http://www.treshombres.com.au",
  owner: "Teddy Richards",
  capacity: 10,
  status: "Open",
  image_file_name: "mycafe.jpg"
}.merge(overrides)
end
