# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  cat1 = Cat.create(birth_date: '20181113', color: 'black', name: 'Whiskers', sex: 'M', description: 'Manguy cat')
  cat2 = Cat.create(birth_date: '20161112', color: 'brown', name: 'Garfield', sex: 'M', description: 'Fat cat')