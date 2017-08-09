puts "destroying all pubs"
Pub.destroy_all

puts "creating pubs"
arguments = [
  {
    name: "Golden apple",
    address: "rue de la pomme d'or, Bordeaux",
    description: "warm athmosphere, pretty girls",
    happy_hour_price: 4
  },
  {
    name: "Bombardier",
    address: "just behind the Pantheon",
    description: "greate quizz on sunday night",
    happy_hour_price: 6
  },
  {
    name: "Le wagon bar",
    address: "Cours Balguerie.....",
    description: "Heineken when lucky...",
    happy_hour_price: 4500
  }
]
Pub.create!(arguments)
puts "seed complete"
