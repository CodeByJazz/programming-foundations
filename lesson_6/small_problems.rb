# Easy 1

#1
# def repeat (str, num)
#   num.times do 
#     puts str
#   end
# end


# repeat('Hello', 3) # => 'Hello' 'Hello' 'Hello'

#2
# def is_odd?(num)
#   num % 2 == 1
# end

# puts is_odd?(2) # => false
# puts is_odd?(5) # => true
# puts is_odd?(-17) # => true
# puts is_odd?(-8) # => false

#3
# def digit_list(num)
#   num.to_s.split("").map(&:to_i)
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

#4
# def count_occurrences(arr)
#   puts arr.tally
# end

# def count_occurrences(array)
#   occurences = {}

#   array.uniq.each do |element|
#     occurences[element] = array.count(element)
#   end
#   occurences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

#5
# def reverse_sentence(str)
#   str.split(" ").reverse.join(" ")
# end

# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' 

#6
# def reverse_words(str)
#   arr = str.split(" ").each do |word|
#     if word.length >= 5 
#       word.reverse!
#     end
#   end
#   arr.join(" ")
# end
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

#7 
# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0 
#     numbers << number
#   end

#   numbers.join
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101' 

#8
# def average(arr)
#   arr.sum / arr.length
# end

# puts average([1, 6]) == 3
# puts average([1, 5, 87, 45, 8, 8])
# puts average([9, 47, 23, 95, 16, 52]) == 40

#9 
# def sum(num)
#   arr = num.to_s.chars 
#   arr.map! do |num| 
#     num.to_i
#   end
#   p arr.sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

#10
# def calculate_bonus(salary, boolean)
#   if boolean == true 
#     bonus = salary / 2 
#   else boolean == false
#     bonus = 0
#   end
  
#   bonus
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# Easy 2

#1

# age = rand(20..200)
# puts "Teddy is #{age} years old!"

#2
# def prompt(msg)
#   puts ">> #{msg}"
# end

# prompt("Enter the length of the room in meters:")

# length = gets.chomp.to_f

# prompt("Enter the width of the room in meters:")

# width = gets.chomp.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * 10.7639).round(2) 

# puts "The area of the room is #{square_meters} " + \
#      "square meters (#{square_feet} square feet)."

#3
# def prompt(msg)
#   puts ">> #{msg}"
# end

# prompt("What is the bill?")

# bill = gets.chomp.to_f

# prompt("What is the tip percentage?")

# tip_percentage = gets.chomp.to_f

# tip_total = bill * (tip_percentage * 0.01)

# bill_total = bill + tip_total

# prompt("The tip is $#{tip_total}")
# prompt("The total is $#{bill_total}")

#4
# def prompt(msg)
#   puts ">> #{msg}"
# end

# prompt("What is your age?")

# current_age = gets.chomp.to_i

# prompt("At what age would you like to retire?")

# retirement_age = gets.chomp.to_i

# current_year = Time.now.year

# remaining_work_years = retirement_age - current_age

# retirement_year = current_year + remaining_work_years 

# prompt("It's #{current_year}. You will retire in #{retirement_year}.")
  
# prompt("You have only #{remaining_work_years} years of work to go!")

#5
# puts "What is your name?"

# user_name = gets.chomp

# if user_name.include?("!")
#   user_name = user_name.chop 
#   puts "HELLO " + user_name.upcase + ". WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{user_name}."
# end

#6
# (1..99).each { |num| puts num if num.odd? }

#7
# (1..99).each { |num| puts num if num.even? }

#8
# def prompt(msg)
#   puts ">> #{msg}"
# end

# prompt("Please enter an integer greater than 0:")

# chosen_number = gets.chomp.to_i

# prompt("Enter 's' to compute the sum, 'p' to compute the product")

# operation_to_perform = gets.chomp

# if operation_to_perform == 's'
#   sum = (1..chosen_number).sum 
#   puts "The sum of the integers between 1 and #{chosen_number} is #{sum}."
# elsif operation_to_perform == 'p'
#   product = 1
#   (1..chosen_number).each { |num| product *= num }
#   puts "The product of the integers between 1 and #{chosen_number} is #{product}."
# else 
#   puts "Sorry, that is not a valid answer."
# end

#9
# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# #vs 

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

#10

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)

# array2 = []

# array1.each { |value| array2 << value }

# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

# puts array2

# Easy 3

#1

# def prompt(msg)
#   puts "==> #{msg}"
# end

# arr = []

# prompt("Enter the 1st number: ")

# arr << gets.chomp.to_i

# prompt("Enter the 2nd number: ")

# arr << gets.chomp.to_i

# prompt("Enter the 3rd number: ")

# arr << gets.chomp.to_i

# prompt("Enter the 4th number: ")

# arr << gets.chomp.to_i

# prompt("Enter the 5th number: ")

# arr << gets.chomp.to_i

# prompt("Enter the last number: ")

# last_number = gets.chomp.to_i

# if arr.include?(last_number)
#   puts "The number #{last_number} appears in #{arr}."
# else 
#   puts "The number #{last_number} does not appear in #{arr}."
# end

#2

# def prompt(msg)
#   puts "==> #{msg}"
# end

# def addition(num1, num2)
#   sum = num1 + num2 
#   prompt("#{num1} + #{num2} = #{sum}")
# end

# def subtraction(num1, num2)
#   difference = num1 - num2 
#   prompt("#{num1} - #{num2} = #{difference}")
# end

# def product(num1, num2)
#   product = num1 * num2 
#   prompt("#{num1} * #{num2} = #{product}")
# end

# def quotient(num1, num2)
#   quotient = num1 / num2 
#   prompt("#{num1} / #{num2} = #{quotient}")
# end

# def remainder(num1, num2)
#   remainder = num1 % num2 
#   prompt("#{num1} % #{num2} = #{remainder}")
# end

# def power(num1, num2)
#   power = num1 ** num2 
#   prompt("#{num1} ** #{num2} = #{power}")
# end

# prompt("Enter the first number: ")

# num1 = gets.chomp.to_i

# prompt("Enter the second number: ")

# num2 = gets.chomp.to_i

# addition(num1, num2)
# subtraction(num1, num2)
# product(num1, num2)
# quotient(num1, num2)
# remainder(num1, num2)
# power(num1, num2)

#3 

# puts "Please write word or multiple words: "

# given_words = gets.chomp

# new_str = given_words.gsub(/\s+/, "")

# number_of_chars = new_str.length

# puts "There are #{number_of_chars} characters in '#{given_words}'."

#4

# def multiply(num1, num2)
#   num1 * num2
# end

# puts multiply(5, 3) == 15

#5

# product = nil

# def multiply(num1, num2)
#   product = num1 * num2
# end

# def square(product)
#   product * product
# end

# puts square(5) == 25
# puts square(-8) == 64

#6
# def xor?(exp1, exp2)
#   if exp1 == true && exp2 == true
#     false
#   elsif exp1 == false && exp2 == false
#     false
#   else
#     true
#   end
# end


# puts xor?(5.even?, 4.even?)
# puts xor?(5.odd?, 4.odd?)
# puts xor?(5.odd?, 4.even?)
# puts xor?(5.even?, 4.odd?) 

#7

# def oddities(arr) 
#   result = []
#   arr.each_with_index do |el, index|
#     if index.even? 
#       result << el
#     else
#     end
#   end
  
#   result
# end


# puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []
# puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

#8 

# def palindrome?(str)
#   if str == str.reverse
#     true
#   else 
#     false
#   end
# end

# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false       # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true

#9
# def real_palindrome?(str)
#   str.delete!(" ")
#   str.delete!(",")
#   str.delete!("'")
#   str.downcase.reverse == str.downcase
# end

# puts real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false

#10
# def palindromic_number?(number)
#   number.to_s.reverse == number.to_s
# end

# puts palindromic_number?(34543) == true
# puts palindromic_number?(123210) == false
# puts palindromic_number?(22) == true
# puts palindromic_number?(5) == true

# Easy 4 

#1
# def short_long_short(str1, str2)
#   if str1.length < str2.length
#     str1 + str2 + str1
#   else 
#     str2 + str1 + str2
#   end
# end

# puts short_long_short('abc', 'defgh') == "abcdefghabc"
# puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
# puts short_long_short('', 'xyz') == "xyz"

#2
# def century(year)
#   case year
#   when (1..100)
#     "1st"
#   when (200..300)
#     "3rd"
#   when (1000..1100)
#     "11th"
#   when (1100..1200)
#     "12th"
#   when (1901..2000)
#     "20th"
#   when (2001..2100)
#     "21st"
#   when (10100..10200)
#     "102nd"
#   when(11201..11300)
#     "113th"
#   end
# end


# puts century(2000) == '20th'
# puts century(2001) == '21st'
# puts century(1965) == '20th'
# puts century(256) == '3rd'
# puts century(5) == '1st'
# puts century(10103) == '102nd'
# puts century(1052) == '11th'
# puts century(1127) == '12th'
# puts century(11201) == '113th'

#3

# def leap_year?(year)
#   if year % 400 == 0 
#     true 
#   elsif year % 100 == 0 && year % 4 == 0
#     false
#   elsif year % 4 == 0
#     true
#   else 
#     false
#   end
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true

#4
# def leap_year?(year)
#   if year > 1752
#     if year % 400 == 0 
#       true 
#     elsif year % 100 == 0 && year % 4 == 0
#       false
#     elsif year % 4 == 0
#       true
#     else 
#       false
#     end
#   elsif year <= 1752
#     if year % 4 == 0
#     true
#     else 
#       false
#     end
#   end
# end
  
# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == true
# puts leap_year?(1) == false
# puts leap_year?(100) == true
# puts leap_year?(400) == true

#5 
# def multisum(num)
#   arr = []
#   (1..num).each do |num|
#     if num % 3 == 0 || num % 5 == 0 
#       arr << num
#     end
#   end

#   arr.sum
# end

# puts multisum(3) == 3
# puts multisum(5) == 8
# puts multisum(10) == 33
# puts multisum(1000) == 234168

#6
# def running_total(arr)
#   sum = 0
#   results = arr.map do |num|
#      sum += num
#   end
# results
# end

# puts running_total([2, 5, 13]) == [2, 7, 20]
# puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# puts running_total([3]) == [3]
# puts running_total([]) == []

#7 
# def string_to_integer(str)
#   begin
#     Integer(str)
#   rescue ArgumentError
#     nil
#   end
# end

# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570

#8
# def string_to_signed_integer(str)
#   begin
#     Integer(str)
#   rescue ArgumentError
#     nil
#   end
# end

# puts string_to_signed_integer('4321') == 4321
# puts string_to_signed_integer('-570') == -570
# puts string_to_signed_integer('+100') == 100

#9
# def integer_to_string(num)
#   begin
#     String(num)
#   rescue ArgumentError
#     nil
#   end
# end

# puts integer_to_string(4321) == '4321'
# puts integer_to_string(0) == '0'
# puts integer_to_string(5000) == '5000'

#10 
# def signed_integer_to_string(num)
#   case num <=> 0
#   when -1 
#     "-#{integer_to_string(-num)}"
#   when +1 
#     "+#{integer_to_string(num)}"
#   else 
#     integer_to_string(num)
#   end
# end

# puts signed_integer_to_string(4321) == '+4321'
# puts signed_integer_to_string(-123) == '-123'
# puts signed_integer_to_string(0) == '0'

# Easy 5

#1
# def ascii_value(str)
#  sum = 0
#  str.each_char do |char| 
#   sum += char.ord
#  end
#  sum
# end

# puts ascii_value('Four score') == 984
# puts ascii_value('Launch School') == 1251
# puts ascii_value('a') == 97
# puts ascii_value('') == 0

#2

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_to_0_through_1439(minutes)
#   while minutes < 0
#     minutes += MINUTES_PER_DAY
#   end

#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

#3
# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end

#4
# def swap_first_last_character(str)
#   str.split(" ").each do |word|
#     word[0], word[-1] = word[-1], word[0]
#     word
#   end
# end

# def swap(words)
#   result = words.split.map do |word| 
#     swap_first_last_character(word)
#   end
#   result.join(' ')
# end

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

#5
# def cleanup(str)
#   str.gsub(/\W+/, ' ')
# end

# puts cleanup("---what's my +*& line?")

#6
# def word_sizes(sentence)
#   result = Hash.new(0)
#   sentence.split(" ").each do |word|
#     result[word.size] += 1
#   end
#   puts result
# end


# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

#7
# def word_sizes(sentence)
#   result = Hash.new(0)
#   sentence.gsub!(/\W+/, ' ')
#   sentence.split(" ").each do |word|
#     result[word.size] += 1
#   end
   
#   result
# end

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

#8

# NUMBER_WORDS = %w(zero one two three four
#   five six seven eight nine
#   ten eleven twelve thirteen fourteen
#   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
# numbers.sort_by { |number| NUMBER_WORDS[number] }
# end

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

#9
# def crunch(text)
# index = 0
# crunch_text = ''
# while index <= text.length - 1
#   crunch_text << text[index] unless text[index] == text[index + 1]
#   index += 1
# end
# crunch_text
# end

# puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

#10

# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end

# print_in_box('To boldly go where no one has gone before.')

#11

# def spin_me(str)
# str.split.each do |word|
#   word.reverse!
# end.join(" ")
# end

# str = 'hello world'
# puts str.object_id # 47435609148580
# puts spin_me(str).object_id # 47435609148360

#Easy 6

#1
# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#2

# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU')}
# end
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#3
# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits

#     first = second
#     second = fibonacci
#   end

#   index
# end

#4
# def reverse!(array)
#   left_index = 0
#   right_index = -1

#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end

#   array
# end

#5
# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end

#6
# def merge(arr1, arr2)
#   new_arr = arr1 + arr2
#   result = new_arr.uniq
#   p result
# end

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#7
# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

#8
# def find_dup(array)
#   array.find { |element| array.count(element) == 2)}
# end

# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

#9
# def include?(array, value)
#   array.each { |num| return true if value == num}
#   false
# end

# puts include?([1,2,3,4,5], 3) == true
# puts include?([1,2,3,4,5], 6) == false
# puts include?([], 3) == false
# puts include?([nil], nil) == true
# puts include?([], nil) == false

#10
# def triangle(num)
#   spaces = num - 1
#   stars = 1
  
#   num.times do |n|
#     puts (' ' * spaces) + ("*" * stars)
#     spaces -= 1
#     stars +=1
#   end
# end

#Easy 7

#1
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end

#2

# UPPERCASE_CHARS = ('A'..'Z').to_a
# LOWERCASE_CHARS = ('a'..'z').to_a

# def letter_case_count(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0}

#   string.chars.each do |char|
#     if UPPERCASE_CHARS.include?(char)
#       counts[:uppercase] += 1
#     elsif LOWERCASE_CHARS.include?(char)
#       counts[:lowercase] += 1
#     else 
#       counts[:neither] += 1
#     end
#   end

#   counts
# end

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#3
# def word_cap(string)
#   string.downcase!
#   new_str = string.split(" ").each { |word| word.capitalize! }
#   new_str.join(' ')
# end

# puts word_cap('four score and seven') == 'Four Score And Seven'
# puts word_cap('the javaScript language') == 'The Javascript Language'
# puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#4
# def swapcase(str)
#   characters = str.chars.map do |letter|
#     if letter =~ /[A-Z]/
#       letter.downcase
#     elsif letter =~ /[a-z]/
#       letter.upcase
#     else
#       letter
#     end
#   end
#   characters.join
# end

# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#5
# def staggered_case(str)
#   new_str = ''
#   need_upper = true
#   str.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else 
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end


# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#6
# def staggered_case(str)
#   new_str = ''
#   need_upper = true
#   str.chars.each do |char|
#     if char =~ /[a-z]/i
#       if need_upper
#         result += char.upcase
#       else 
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     else 
#       result += char
#     end
#   end
#   result
# end


# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#7
# def show_multiplicative_average(array)
#   product = array.inject(:*)
#   result = product.to_f / array.length
#   puts "The result is #{format('%.3f', result)}"
# end



# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

#8
# def multiply_list(array1, array2)
#   result = []
#   array1.each_with_index do |item, index|
#     result << item * array2[index]
#   end
#   result
# end

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#9
# def multiply_all_pairs(array1, array2)
#   products = []
#   array1.each do |item_1|
#     array2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#10
# def penultimate(str)
#   p new_str = str.split
#   new_str[-2]
# end

# puts penultimate('last word') 
# puts penultimate('Launch School is great!')

#Easy 8 

#1
# def sum_of_sums(arr)
#   sum_total = 0
#   accumulator = 0

#   arr.each do |num|
#     accumulator += num 
#     sum_total += accumulator
#   end

#   sum_total
# end

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

#2

# def prompt(msg)
#   puts ">> #{msg}"
# end

# prompt("Enter a noun: ")
# noun = gets.chomp
# prompt("Enter a verb: ")
# verb = gets.chomp
# prompt("Enter an adjective: ")
# adjective = gets.chomp
# prompt("Enter an adverb: ")
# adverb = gets.chomp

# puts "When the #{noun} goes to #{verb} it sees a #{adjective} woman #{adverb} eating a can of sardines."

#3

# def leading_substrings(str)
#   result = []
#   str.length.times do |x|
#     result << str[0..x]
#   end
#   result
# end

# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#4
# def substrings(string)
#   results = []
#   (0..string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(leadings_substrings(this_substring))
#   end
#   results
# end

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

#5

# def palindromes(string)
#   all_substrings = substrings(string)
#   results = []
#   all_substrings.each do |substring|
#     results << substring if palindrome?(substring)
#   end
#   results
# end

# def palindrome?(string)
#   string == string.reverse && string.size > 1
# end


# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

#6
# def fizzbuzz(num1, num2)
#   (num1..num2).each do |num| 
#     if num % 3 == 0 && num % 5 == 0
#       puts "Fizzbuzz"
#     elsif num % 5 == 0 
#       puts "Buzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     else 
#       puts num
#     end
#   end
# end


# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#7

# def repeater(string)
#   result = []
#   string.chars.each do |char|
#     result << char * 2
#   end
#   puts result.join
# end
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

#8
# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   result = []
#   string.chars.each do |char|
#     if CONSONANTS.include?(char)
#       result << char * 2
#     else 
#       result << char 
#     end
#   end
#   puts result.join
# end

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

#9
# def reversed_number(number)
#   num_string = number.to_s
#   num_string.reverse!
#   num_string.to_i
# end


# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

#10
# def center_of(string)
#   result = ''
#   if string.length % 2 == 0
#     string.split.each do |word|
#       i = word.length / 2 - 1
#       result << word.slice(i, 2)
#     end
#   else 
#     string.length % 2 != 0
#     string.split.each do |word|
#       p word
#     end
#   end
#   result
# end

# def center_of(string)
#   center_index = string.size / 2
#   if string.size.odd?
#     string[center_index]
#   else
#     string[center_index - 1, 2]
#   end
# end

# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

#Easy 9

#1
# def greetings(arr, hash)
#   name = arr.join(" ")
#   puts "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
# end


# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# "Hello, John Q Doe! Nice to have a Master Plumber around."

#2
# def twice(value)
#   string_value = value.to_s
#   i = (string_value.length / 2).round
#   if string_value.slice(0, i) == string_value.slice(-i, i)
#     puts string_value.to_i
#   else
#     puts value * 2
#   end
# end

# def twice(number)
#   string_number = number.to_s
#   center = string_number.size / 2
#   left_side = center.zero? ? '' : string_number[0..center - 1]
#   right_side = string_number[center..-1]

#   return number if left_side == right_side
#   return number * 2
# end

# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

#3
# def negative(num)
#   if num > 0
#     num - num * 2
#   elsif num <= 0
#     num 
#   end
# end

# def negative(num)
#   number > 0 ? -number : number
# end

# puts negative(5) == -5
# puts negative(-3) == -3
# puts negative(0) == 0      # There's no such thing as -0 in ruby

#4
# def sequence(num)
#   arr = []
#   (1..num).each do |num|
#     arr << num 
#   end
#   p arr
# end

# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

#5
# def uppercase?(string)
#   string == string.upcase
# end

# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

#6 
# def word_lengths(string)
#   result = []
#   string.split.each do |word|
#     result << "#{word} #{word.length}"
#   end
#   p result
# end

# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# word_lengths("") == []

#7
# def swap_name(name)
#   puts "#{name.split.last}, #{name.split.first}"
# end

# swap_name('Joe Roberts') == 'Roberts, Joe'

#8
# def sequence(count, first_num)
#   results = []
#   number = first_num

#   (count).times do 
#     results << number 
#     number += first_num
#   end
#   p results
# end

# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

#9
# def get_grade(score_1, score_2, score_3)
#   score = (score_1 + score_2 + score_3) / 3

#   case 
#     when 90 <= score && score <= 100
#       'A'
#     when 80 <= score && score < 90
#       'B'
#     when 70 <= score && score < 80
#       'C'
#     when 60 <= score && score < 70
#       'D'
#     when 0 <= score < 60
#       'F'
#     else
#   end
# end

# p get_grade(95, 90, 93) 
# p get_grade(50, 50, 95)

#10

# def buy_fruit(arr)
#   result = []

#   arr.each do |sub_arr|
#     quantity = sub_arr[1] 
#     quantity.times {result << sub_arr[0]}
#   end

#   p result
# end

# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

#11
# iterate over array 
# sort each word into alphabetical order
# if key exists, append current word into value (array)
# otherwise, create new key woth this sorted word

# result = {}

# def anagram(arr)
#   arr.each do |word|
#     key = word.split('').sort.join
#     if result.has_key?(key)
#       result[key].push(word)
#     else
#       result[key] = [word]
#     end
#   end
# end

# result.each_value do |v|
#   puts "------"
#   p v
# end

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#   'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#   'flow', 'neon']

