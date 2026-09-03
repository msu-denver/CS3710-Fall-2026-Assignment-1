Character.destroy_all

characters = [
    "Han Solo",
    "Darth Vader",
    "Luke Skywalker",
    "Princess Leia Organa",
    "Obi-Wan Kenob",
    "Yoda",
    "R2-D2",
    "Chewbacca"
]

characters.each do |character|
    Character.create!(character: character)
end
p "Created characters"
