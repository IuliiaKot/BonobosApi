# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'CSV'


Product.delete_all
Inventory.delete_all

products = File.read('db/products.csv')

CSV.parse(products, :headers => true, :header_converters => :symbol) do |row|
  row[:id] = row[:product_id]
  row.delete(:product_id)
  Product.create(row.to_h)
end

inventories = File.read('db/inventory.csv')
CSV.parse(inventories, :headers => true, :header_converters => :symbol) do |row|
  Inventory.create(row.to_h)
end
