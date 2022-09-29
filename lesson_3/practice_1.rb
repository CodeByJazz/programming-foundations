#Problem 3
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

puts advice

#Problem 4
numbers = [1, 2, 3, 4, 5]

numbers.delete(3)

p numbers 

#Problem 5
p (10..100).include?(42)

#Problem 6
famous_words = "seven years ago..."
 
famous_words.insert(0, "Four score and ")

"Four score and " + famous_words

famous_words.prepend("Four score and ")

"Four score and " << famous_words

#Problem 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

#Problem 8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

new_array = flintstones.to_a.flatten!

new_array.shift(4)

new_array.pop(6)

p new_array