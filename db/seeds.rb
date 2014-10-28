# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
result = Page.find_or_create_by(
    path: 'home',
    title: 'Home',
    required: true
)
result = User.create(
    email: 'admin@admin.com',
    name: 'admin',
    password: 'password'
)

if result
  puts 'Seeding successful'
else
  puts 'seeding failed'
end