#Problem 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include?("Spot")

p ages.has_value?("Spot")

p ages.key?("Spot")

#Problem 2
munsters_description = "The Munsters are creepy in a good way."

1 munsters_description.swapcase!
2 munsters_description.capitalize!
3 munsters_description.downcase!
4 munsters_description.upcase!

#Problem 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

#Problem 4
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("Dino")

#Problem 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Problem 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

#Problem 7
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino", "Hoppy")

#Problem 8
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0,39)

p advice

#Problem 9
statement = "The Flintstones Rock!"

statement.count("t")

#Problem 10
title = "Flintstone Family Members"

p title.center(40)