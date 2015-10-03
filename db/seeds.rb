# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Program.create(name: 'All About the Back')
Exercise.create(name: 'Scapular Retractions', description: 'Draw your shoulder blades back and down, as though trying to squeeze a pencil between them',
repetition: '3 sets of 10',
image: 'www.scapretract.jpg', program_id: 1)
