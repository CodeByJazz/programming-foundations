#1
# arr = ['10', '11', '9', '7', '8']
# p arr.sort { |a, b| b.to_i <=> a .to_i}

#2
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# sorted = books.sort {|a, b| a[:published] <=> b[:published]}

# puts sorted

# books.sort_by do |book|
#   book[:published]
# end

#3
# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p arr1[2][1][3]

# p arr2[1][:third][0]

# p arr3[2][:third][0][0]

# p hsh1['b'][1]

# p hsh2[:third].key(0)

# hsh2.each do |key, value|  
#  value.each do |key, value|
#   puts key if key == 'g'
#  end 
# end

#4
# arr1 = [1, [2, 3], 4]

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# hsh1 = {first: [1, 2, [3]]}

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}


# arr1[1][1] = 4

# arr2[2] = 4

# hsh1[:first][2][0] = 4

# hsh2[['a']][:a][2] = 4

#5
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total = 0
# munsters.each do |key, value|
#   if value['gender'] == 'male'
#     total += value['age']
#   end
# end

# puts total

#6
# munsters.each do |key, value|
#   puts "#{key} is a #{value['age']}-year-old #{value['gender']}." 
# end 

#7

# a = 2
# b = [5, 8]
# arr = [a, b]

# p arr[0] += 2
# p arr[1][0] -= a

# p a
# p b
# p arr

#8 
# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# vowels = 'aeiou'
# hsh.each do |key, value|
#   value.each do |str|
#     str.chars.each do |letter| 
#         puts letter if vowels.include?(letter)
#     end
#   end
# end

#9

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# new_arr = arr.map do |element|
#   element.sort do |a, b|
#     b <=> a
#   end
# end
# p new_arr

# expected output => [[green, blue, black], [c, b, a], [3, 2, 1]]
 
#10
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |pair, _|
#   incremented_hash = {}
#   pair.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   p incremented_hash
# end

#11
# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# multiples_of_3 = []

# new_arr = arr.map do |sub_arr|
#   sub_arr.select do |num|
#     num % 3 == 0
#   end
# end
# p new_arr

#12
# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# new_arr = arr.each_with_object({}) do |(key,value), hash|
#    hash[key] = value
# end

# p new_arr

#13
# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# expected ouput => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

# new_arr = arr.sort_by do |element|
#   element.select do |num|
#     num.odd? 
#   end
# end
# p new_arr

#14
# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# arr = hsh.map do |_, details|
#   if details[:type] == 'fruit'
#     details[:colors].map do |color|
#       color.capitalize
#     end 
#   elsif details[:type] == 'vegetable'
#       details[:size].upcase
#   end
# end

# p arr

#15
# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# new_arr = arr.select do |hash|
#   hash.all? do |_, value|
#     value.all? do |num|
#       num.even?
#     end
#   end
# end
# p new_arr

#16
# def generate_UUID
#   characters = []
#   (0..9).each { |digit| characters << digit.to_s}
#   ('a'..'f').each { |digit| characters << digit}

#   uuid = ''
#   sections = [8, 4, 4, 4, 12]
#   sections.each_with_index do |section, index|
#     section.times { uuid += characters.sample }
#     uuid += '-' unless index >= sections.size - 1
#   end 

#   uuid
# end
todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]

todo_lists[1][:todos][0][:completed] = true
todo_lists[1][:todos][1][:completed] = true

p todo_lists