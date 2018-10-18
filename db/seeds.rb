# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
File.open("db/wordlist.txt") do |file|
  file.lines.each do | line|
    word = Word.create
    puts "#{line}"
    line.split("").each do |letter|
      character = Character.find_or_create_by value: letter
      WordCharacter.create word: word, character: character
    end
  endexit
end