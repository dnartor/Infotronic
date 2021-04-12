# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'Ordenadores',details: 'Ordenadores de sobremesa')
Category.create(name: 'Monitores',details: 'Resolución to padre')
Category.create(name: 'Teclados',details: 'Botoncitos flama')
Category.create(name: 'Ratones',details: 'Que comen queso')
Category.create(name: 'Portátiles',details: 'Te los llevas pa tos laos')

Brand.create(name: 'Apple')
Brand.create(name: 'Microsoft')
Brand.create(name: 'Samsung')
Brand.create(name: 'LG')
Brand.create(name: 'Razer')

ordenadores1 = Product.create(name: 'Apple iMac 21.5'  , price: 1349, description: 'Intel® Core™ i5-7360U, Iris® Plus Graphics 640 + Magic Keyboard teclado numérico', onsale: false, category_id: 1, brand_id:1)
ordenadores2 = Product.create(name: 'All in One - Microsoft Surface Studio 2', price: 5499, description:'28"Táctil, Intel®Core™i7-7820HQ, 32GB RAM, 2TB SSD, GTX1070' , onsale: false, category_id: 1, brand_id:2)
ordenadores3 = Product.create(name: 'All in One - Microsoft Surface Studio 2', price: 4149, description:'28"Táctil, Intel®Core™i7-7820HQ, 16GB RAM, 1TB SSD, GTX1060' , onsale: false, category_id:1, brand_id:2)
ordenadores4 = Product.create(name: 'REVENANT PRO', price: 1471, description: 'AMD ryzen', onsale: false, category_id:1, brand_id:5)

ordenadores1.image.attach(io: File.open("app/assets/images/ordenadores1.png"), filename: "ordenadores1.png")
ordenadores2.image.attach(io: File.open("app/assets/images/microsoft-allInOne.png"), filename: "microsoft-allInOne.png")
ordenadores3.image.attach(io: File.open("app/assets/images/ordenador3.jpeg"), filename: "ordenador3.jpeg")
ordenadores4.image.attach(io: File.open("app/assets/images/ordenador4.png"), filename: "ordenador4.png")