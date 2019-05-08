# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


rental1 = {
	          title: 'Grand Old Mansion',
	          owner: 'Veruca Salt',
	          city: 'San Francisco',
	          category: 'Estate',
	          bedrooms: 15.0,
	          image: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Crane_estate_(5).jpg',
	          description: "This grand old mansion sits on over 100 acres of rolling hills and dense redwood forests."
	       }
rental2 = {
	          title: 'Urban Living',
	          owner: 'Mike Teavee',
	          city: 'Seattle',
	          category: 'Condo',
	          bedrooms: 1.0,
	          image: 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Alfonso_13_Highrise_Tegucigalpa.jpg',
	          description: "A commuters dream. This rental is within walking distance of 2 bus stops and the Metro."
	       }
rental3 = {
	          title: 'Downtown Charm',
	          owner: 'Violet Beauregarde',
	          city: 'Portland',
	          category: 'Apartment',
	          bedrooms: 3.0,
	          image: 'https://upload.wikimedia.org/wikipedia/commons/f/f7/Wheeldon_Apartment_Building_-_Portland_Oregon.jpg',
	          description: "Convenience is at your doorstep with this charming downtown rental. Great restaurants and active night life are within a few feet."
	       }

Rental.create(rental1)
Rental.create(rental2)
Rental.create(rental3)