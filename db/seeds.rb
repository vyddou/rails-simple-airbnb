# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all

flats = [
  {
    name: "Charmant studio Montmartre",
    address: "12 Rue Lepic, 75018 Paris",
    description: "Studio romantique au cœur de Montmartre avec vue sur les toits de Paris. Parfait pour couples.",
    price_per_night: 95,
    number_of_guests: 2,
    picture_url: "https://images.unsplash.com/photo-1628589549925-3bb8e0632be5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Appartement design Le Marais",
    address: "45 Rue de Turenne, 75004 Paris",
    description: "Loft spacieux de 60m² avec terrasse dans le quartier branché du Marais. Décoration contemporaine.",
    price_per_night: 180,
    number_of_guests: 4,
    picture_url: "https://images.unsplash.com/photo-1692656125702-c63a8b7257b8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Luxueux appartement Saint-Germain",
    address: "172 Boulevard Saint-Germain, 75006 Paris",
    description: "Appartement haussmannien rénové avec parquet ancien et moulures. Proche des grands musées.",
    price_per_night: 250,
    number_of_guests: 3,
    picture_url: "https://images.unsplash.com/photo-1644316975279-c7e1565cc601?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
  name: "Nid douillet Canal de l'Ourcq",
  address: "3 Quai de la Loire, 75019 Paris",
  description: "Studio lumineux à 5 min du Canal de l'Ourcq. Proche Parc de la Villette et Philharmonie. Idéal pour découvrir Paris comme un local.",
  price_per_night: 85,
  number_of_guests: 2,
  picture_url: "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267"
},
{
  name: "Cosy Oberkampf",
  address: "78 Rue Oberkampf, 75011 Paris",
  description: "Appartement typique parisien dans la rue animée Oberkampf. Nombreux bars et restaurants à proximité. Parfait pour voyageurs qui aiment l'ambiance nocturne.",
  price_per_night: 110,
  number_of_guests: 3,
  picture_url: "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688"
}
]

flats.each do |flat|
  Flat.create!(flat)
  puts "Flat #{flat[:name]} créé !"
end

puts "#{Flat.count} appartements créés avec succès !"

# Ajoute 3 autres flats similaires...
