# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
File.open("db/wordlist.txt") do |file|
  file.lines.each do | line|
    Word.create characters: line.strip!, length: line.length
    puts "#{line} - ok"
  end
end