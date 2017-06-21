# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# cat1 = Cat.create!(birth_date: Date.new(2000,1,1), color: 'black', name: 'John', sex: 'M', description: 'a')
# cat2 = Cat.create!(birth_date: Date.new(2005,5,5), color: 'Calico', name: 'Justin', sex: 'M', description: 'b')
# cat3 = Cat.create!(birth_date: Date.new(2003,3,3), color: 'white', name: 'Bilbo', sex: 'M', description: 'c')
# cat4 = Cat.create!(birth_date: Date.new(2010,12,15), color: 'brown', name: 'Frodo', sex: 'F', description: 'd')

a = CatRentalRequest.create!(cat_id: 3, start_date: Date.today, end_date: Date.today)
b = CatRentalRequest.create!(cat_id: 3, start_date: Date.new(2015,1,1), end_date: Date.today)
c = CatRentalRequest.create!(cat_id: 2, start_date: Date.today, end_date: Date.today)
