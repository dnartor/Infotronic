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


ordenadores1 = Product.create(name: 'Apple iMac 21.5', price: 1349, description: 'Intel® Core™ i5-7360U, Iris® Plus Graphics 640 + Magic Keyboard teclado numérico', onsale: false, category_id: 1, brand_id:1)
ordenadores2 = Product.create(name: 'All in One - Microsoft Surface Studio 2', price: 5499, description:'28"Táctil, Intel®Core™i7-7820HQ, 32GB RAM, 2TB SSD, GTX1070', onsale: false, category_id: 1, brand_id:2)
ordenadores3 = Product.create(name: 'All in One - Microsoft Surface Studio 2', price: 4149, description:'28"Táctil, Intel®Core™i7-7820HQ, 16GB RAM, 1TB SSD, GTX1060', onsale: false, category_id:1, brand_id:2)
ordenadores4 = Product.create(name: 'REVENANT PRO', price: 1471, description: 'AMD ryzen', onsale: false, category_id:1, brand_id:5)

ordenadores1.image.attach(io: File.open("app/assets/images/ordenadores/ordenadores1.png"), filename: "ordenadores1.png")
ordenadores2.image.attach(io: File.open("app/assets/images/ordenadores/microsoft-allInOne.png"), filename: "microsoft-allInOne.png")
ordenadores3.image.attach(io: File.open("app/assets/images/ordenadores/ordenador3.jpeg"), filename: "ordenador3.jpeg")
ordenadores4.image.attach(io: File.open("app/assets/images/ordenadores/ordenador4.png"), filename: "ordenador4.png")

teclados1 = Product.create(name: 'Apple Smart Keyboard para iPad (7ª gen)', price: 178, description: 'Apple Smart Keyboard para iPad (7ª gen) y el iPad Air (3ª gen), teclado Español, Negro', onsale: false, category_id:3, brand_id: 1)
teclados2 = Product.create(name: 'Apple Magic Keyboard', price: 149, description: 'Teclado inalámbrico - Apple Magic Keyboard, con teclado numérico, Bluetooth, QWERTY Español, Plata', onsale: false, category_id: 3, brand_id: 1)
teclados3 = Product.create(name: 'Microsoft All in One Media Keyboard', price: 42, description: 'Teclado - Microsoft All in One Media Keyboard, inalámbrico, compatible con TV, panel multitáctil, Negro', onsale: false, category_id:3, brand_id: 2)
teclados4 = Product.create(name: 'Microsoft Compact KB ', price: 80, description: 'Teclado - Microsoft Compact KB BLTH Black, Para PC, Inalámbrico, Bluetooth, Negro', onsale: false, category_id:3, brand_id: 2)
teclados5 = Product.create(name: 'Teclado gaming - GXT', price: 20, description: 'Teclado gaming - GXT 853 Esca Metal Rainbow, USB, Retroiluminación RGB, 12 Teclas Programables, USB, Negro', onsale: false, category_id:3, brand_id: 4)

teclados1.image.attach(io: File.open("app/assets/images/teclados/img-1.png"), filename: "img-1.png")
teclados2.image.attach(io: File.open("app/assets/images/teclados/img-2.png"), filename: "img-2.png")
teclados3.image.attach(io: File.open("app/assets/images/teclados/img-3.png"), filename: "img-3.png")
teclados4.image.attach(io: File.open("app/assets/images/teclados/img-4.png"), filename: "img-4.png")
teclados5.image.attach(io: File.open("app/assets/images/teclados/img-5.png"), filename: "img-5.png")

monitores1 = Product.create(name: 'Monitor - LG 32UN500-W', price: 399, description: '31.5, UHD 4K, IPS, FreeSync, 4 ms, 60 hz, 2x HDMI,1x DP, Blanco', onsale: false, category_id:2, brand_id: 4)
monitores2 = Product.create(name: 'Monitor Samsung EG240Y', price: 199.99, description: '23.8 Full HD de 144 Hz', onsale: false, category_id:2, brand_id: 3)
monitores3 = Product.create(name: 'Monitor Samsung de pantalla táctil', price: 279.99, description: '31.5", FHD, pantalla táctil', onsale: false, category_id:2, brand_id: 3)

monitores1.image.attach(io: File.open("app/assets/images/monitores/monitor-1.jpeg"), filename: "monitor-1.jpeg")
monitores2.image.attach(io: File.open("app/assets/images/monitores/monitor-2.png"), filename: "monitor-2.png")
monitores3.image.attach(io: File.open("app/assets/images/monitores/monitor-3.jpeg"), filename: "monitor-3.jpeg")

raton1 = Product.create(name: 'Ratón gaming - Razer Naga Trinity', price:80, description: '16000DPI, USB, Óptico, 19 botones personalizables, Negro y verde', onsale: false, category_id: 4, brand_id: 5)
raton2 = Product.create(name: 'Logitech G502', price: 54, description: 'Hero Ratón Gaming 16000DPI, negro', onsale: false, category_id: 4, brand_id: 4)

raton1.image.attach(io: File.open("app/assets/images/ratones/lg_raton.jpg"), filename: "lg_raton.jpg")
raton2.image.attach(io: File.open("app/assets/images/ratones/raton-gaming-razer-naga-trinity-galeria-3.jpg"), filename: "raton-gaming-razer-naga-trinity-galeria-3.jpg")

portatil1 = Product.create(name: 'MacBook Pro Apple 13.3"', price: 1289, description: 'MacBook Pro Apple MYDA2Y/A, 13.3" Retina, Apple Silicon M1, 8 GB, 256 GB SSD, MacOS, Plata', onsale: false, category_id: 5, brand_id: 1)
portatil2 = Product.create(name: 'Apple MacBook Pro (2020) ', price: 1799, description: 'Apple MacBook Pro (2020) MWP42Y/A, 13'' Retina, Intel® Core™i5 10ª gen., 16GB, 512GB SSD, MacOS, Gris espacial', onsale: false, category_id: 5, brand_id: 1)
portatil3 = Product.create(name: 'Portátil gaming GE66 Raider', price: 3499, description: 'Portátil gaming GE66 Raider 10UH-089ES, 15.6" FHD, Intel® Core™ i9-10980HK, 64GB, 2TB SSD, RTX3080, W10', onsale: false, category_id: 5, brand_id: 4)
portatil4 = Product.create(name: 'Portátil Modern 14', price: 889, description: 'Portátil Modern 14 B10MW-050XES, 14" Full-HD, Intel® Core™ i7-10510U, 16 GB, 1 TB SSD, FreeDOS, Plata', onsale: false, category_id: 5, brand_id: 4)
portatil5 = Product.create(name: 'Convertible 2 en 1 - Microsoft Surface Go 2, 10.5"', price: 521, description: 'Convertible 2 en 1 - Microsoft Surface Go 2, 10.5", Intel® Pentium® Gold 4415Y, 8 GB RAM, 128 GB, W10, Plata', onsale: false, category_id: 5, brand_id: 2)

portatil1.image.attach(io: File.open("app/assets/images/portatiles/teclado-1.PNG"), filename: "teclado-1.PNG")
portatil2.image.attach(io: File.open("app/assets/images/portatiles/teclado-2.PNG"), filename: "teclado-2.PNG")
portatil3.image.attach(io: File.open("app/assets/images/portatiles/teclado-3.PNG"), filename: "teclado-3.PNG")
portatil4.image.attach(io: File.open("app/assets/images/portatiles/teclado-4.PNG"), filename: "teclado-4.PNG")
portatil5.image.attach(io: File.open("app/assets/images/portatiles/teclado-5.PNG"), filename: "teclado-5.PNG")

