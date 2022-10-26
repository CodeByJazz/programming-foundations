loop do 
  puts 'Just keep printing...'
  break
end

loop do 
  puts 'This is the outer loop.'

  loop do 
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'

iterations = 1

loop do 
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end

loop do 
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

say_hello = true

while say_hello
  5.times do 
    puts 'Hello'
  end
  say_hello = false
end

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

numbers = []

while numbers.length < 5
  numbers << rand(0..99)
end

puts numbers 

count = 1 

until count > 10
  puts count
  count += 1
end

numbers = [7, 9, 13, 25, 18]
index = 0

until index > numbers.length
  puts numbers[index]
  index += 1
end

for i in 1..100
  puts i if i.odd?
end

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end

count = 1

loop do 
  until count > 5
    if count.odd?
      puts "#{count} is odd!"
    else 
      puts "#{count} is even!"
    end
  count += 1
  end
  break
end

loop do 
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end

process_the_loop = [true, false].sample

if process_the_loop
  loop do 
    puts 'The loop was processed'
    break
  end
else
  puts "The loop wasn't processed!"
end

loop do 
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer.Try again!"
  end
end

numbers = []

loop do 
  break if numbers.length == 5
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
end
puts numbers 

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
  puts names.shift()
  break if names.empty?
end

5.times do |index|
  break if index == 2
  puts index
end

5.times do |index|
  puts index
  break if index == 4
end

5.times do |index|
  puts index
  break if index < 7
end

number = 0

until number == 10
  number += 1
  if number.odd? 
    next 
  else 
    puts number
  end
end

number_a = 0
number_b = 0

loop do
  p number_a += rand(2)
  p number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts "5 was reached!"
  break
end

def greeting 
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings < 4
  greeting()
  number_of_greetings += 1
end

