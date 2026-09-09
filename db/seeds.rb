# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
topics = [
  "IT-Infrastruktur & Netzwerke",
  "Softwareentwicklung & Programmierung",
  "Datenbanken & Datenanalyse",
  "IT-Sicherheit & Datenschutz",
  "Projektmanagement & Qualitätssicherung",
  "BWL, Wirtschaft & Organisation"
].each { |name| Topic.find_or_create_by!(name: name) }

# --- Shop-Items: Avatare & Rahmen -----------------------------------------
[
  { name: "Junior",                 type_category: "avatar", price: 0,      image_url: "/avatars/avatarStart.jpg" },
  { name: "Stevo",                  type_category: "avatar", price: 150,    image_url: "/avatars/avatar1.jpg" },
  { name: "Twitter",                type_category: "avatar", price: 150,    image_url: "/avatars/avatar2.jpg" },
  { name: "Steam",                  type_category: "avatar", price: 150,    image_url: "/avatars/avatar3.jpg" },
  { name: "Linux",                  type_category: "avatar", price: 150,    image_url: "/avatars/avatar4.jpg" },
  { name: "Eisenmann",              type_category: "avatar", price: 150,    image_url: "/avatars/avatar5.jpg" },
  { name: "SuccessKid",             type_category: "avatar", price: 150,    image_url: "/avatars/avatar6.jpg" },
  { name: "Svin",                   type_category: "avatar", price: 150,    image_url: "/avatars/avatar7.jpg" },
  { name: "Dragon",                 type_category: "frame",  price: 100,    image_url: "/frames/frame1.png" },
  { name: "Crown",                  type_category: "frame",  price: 100,    image_url: "/frames/frame2.png" },
  { name: "Makima",                 type_category: "frame",  price: 100,    image_url: "/frames/frame3.png" },
  { name: "Donuts",                 type_category: "frame",  price: 100,    image_url: "/frames/frame4.png" },
  { name: "Shelly",                 type_category: "frame",  price: 100,    image_url: "/frames/frame5.png" },
  { name: "Retro",                  type_category: "frame",  price: 100,    image_url: "/frames/frame6.png" },
  { name: "Lovecraft",              type_category: "frame",  price: 100,    image_url: "/frames/frame7.png" },
  { name: "Beach",                  type_category: "frame",  price: 100,    image_url: "/frames/frame8.png" }
].each do |attrs|
  ShopItem.find_or_create_by!(name: attrs[:name]) { |item| item.assign_attributes(attrs) }
end
