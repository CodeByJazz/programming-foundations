#START 

# Given two integers, return the sum

# Define a method called 'sum" with two parameters 'num1' and 'num2'

# Use the + operator to add num1 and num2

#Return the sum, by calling 'puts' on the method invocation with the given arguments

#END



#START

# Given an array of strings, return a string with all the strings in the array concatenated

# Define a method called 'concat' with one parameter 'array'

# Call the join method on the array 

# Return the concatenated string by calling 'puts' on the method invocation with the given arguments

#END


#START 

# Given an array of integers, return a new array with every other element from the orginal array, starting with the first element

# Define a method called 'every_other' with one parameter 'array'

# Initialize a local variable called 'new_array' and assign it to an empty array

# Initialize a local variable called 'count' and assign it the integer object 0


# While count is less than or equal to array's length minus 1
  # If count is odd shovel array[count] into 'new_array'
  # Otherwise exit the conditional and increment count by 1 
# Return the new array by calling 'p' on the local variable 'new_array'

#END

# def every_other(array)
#   new_array = []
#   count = 0

#   while count <= array.length
#     if count.even? 
#       new_array << array[count]
#     else 
#     end
#     count += 1
#   end
#   p new_array
# end

# every_other([1,4,7,2,5])

#START

# Given a string and a character, return the index of the third occurence of the given chracter in the string

# If the given chracter does not occur at least 3 times, return nil

# Define a method called 'find_index' with two parameters 'char' and 'string'

# Initialize a local variable called 'array' and assign it to an array object containing each letter in the given string 

# Initialize a local variable called 'result' and assign it to an empty array

# Iterate through each element of 'array' with index

# If the current element is equal to 'char' push 'index' into the local variable 'result'

#Otherwise exit the conditional and go to the next iteration

#If the local variable 'result' has a length greater than or equal to 3, output the third element of the local variable 'result'

#Otherwise return 'nil'

#Example: find_index('x', 'axbxcdxex')

#END

# def find_index(char, string)
#   array = string.chars
#   result = []

#   array.each_with_index do |el, index|
#     if el == char 
#       result << index
#     else 
#     end 
#   end

#   if result.length >= 3
#     puts result[2]
#   else
#     nil
#   end
# end

# find_index('c', 'axbxcdxex')

# Write pseudo for a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. 

#For instance: merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
