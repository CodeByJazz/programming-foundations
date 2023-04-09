
=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?
 
 The code returns nil because the `puts` method always returns nil and it is the last expression evaluated. On `line 73` we invoke the `puts` method with local variable `a` as the argument. The string "Goodbye" is output. On `line 74` we invoke the `puts` method with local variable `b` as the argument. The string "Hello" is output. 

  On 'line 69' local variable 'a' is initialized and the string object "Hello" gets assigned to it. On `line 70` local variable `b` is initialized and the string object referenced by variable `a` gets assigned to it. Both variable `a` and `b` are now referencing the same object. On `line 71` reassignment takes place, and local variable `a` now points to the string object "Goodbye". However, local variable `b` still references the string object "Hello". 

  The concept demonstrated by this code is variables as pointers. Variables are simply labels for a space in memory. We can then use these variables to perform different methods on Ruby objects. 
=end

=begin 

 The code returns `nil` because the last evaluated expression on `line 94` is `break`, which always returns `nil`. On `line 97` we invoke the `puts` method with local variable `a` as the argument. The output will be integer 5. On `line 98` we invoke the `puts` method with local variable `b` as the argument. We will get an "undefined local variable or method" error message because we do not have access to the inner scope in which the variable was defined. 

 On `line 88` local variable `a` is initialized and the integer object 4 gets assigned to it. On `line 90` we invoke the loop method and pass in the do..end block as an argument. Within the block, on `line 91`, local variable `a` gets reassigned the integer object 5. Since blocks have access to variables in the outer scope, we will see this change output on `line 97`. However since on `line 92`, we initialize local variable `b` in the inner scope, we will not able to see its output on line `98`. 

  The concept demonstrated by this code is local variable scope. Variables in the outer scope can be accessed by the inner scope. However, variables in the inner scope can not be accessed in the outer scope.

=end

=begin

  The code returns `nil` because the last evaluated expression on `line 48` is `break`, which always returns `nil`. On `line 52` we invoke the `puts` method with local variable `b` as the argument. The integer 2 is output. On `line 51` we invoke the `puts` method with local variable `a` as the argument. The integer 3 is output because local variable `a` now references the same object that `c` was assigned within the block. The integer object is now available in the outer scope due to the reassignment on `line 47`.

  On `line 42` local variable `a` is initialized and the integer object 4 gets assigned to it. On `line 43` local variable `b` is initialized and the integer object 2 gets assigned to it. On `line 45` we invoke the `loop` method and pass the `do..end` block as an argument. Within the block, we initalize local variable `c` and the integer 3 gets assigned to it on `line 46`. On `line 47` we reassign the object referenced by local variable `c` to local variable `a`. On `line 48` we call `break` to end the loop.

  The concept demonstrated by this code is variables as pointers and local variable scope. A block is defined by a method that precedes a do..end or {}. Blocks create a new scope and depending on where a variable gets initialized, determines where the variable will be available for use. Although local variable `c` was initialized in the inner scope, we are able to reference the object it points to due to the reassignment on local variable `a`

=end

=begin

What does the following code return? What does it output? Why? What concept does it demonstrate?

The code returns `nil` because the last evaluated expression on `line 69` is `break`, which always returns `nil`. The code will output the string `"hello"` 3 times. This is because when we invoke the method `example` on `line 73` with the argument `"hello"`, this string becomes an alias for the parameter `str`. The local variable 'str' now references the string object `"hello"`. 

On `line 64` the method `example` is defined with one parameter `str`. Local variable `i` is initialized and the integer object 3 gets assigned to it. On `line 66` we invoke the `loop` method and pass the `do..end` block as the argument. Within the block we invoke the `puts` method on the local variable `str`. This will output the string `"hello"`. On `line 68` we use the `#-=` method on local variable `i` which will perform an operation and reassignment at the same time. We decrement local variable `i` by 1 and reassign the return value to `i` on each iteration of the loop. On `line 69` we use `break` and the conditional `if` to break out of the loop when variable `i` is equal to 0. 

The concept demponstrated by this code is local variable scope. Methods have self contained scope so they do not have access to variables defined in the outer scope. However, they are able to access outter scoped objects and variables when they are passed to the method as an argument. Upon method invocation, the argument is assigned to the method parameter (str = "hello"). This is why we get the string object `"hello"` printed 3 times. 

=end

=begin

What does the following code return? What does it output? Why? What concept does it demonstrate?

The code returns `nil` because the last evaluated expression on `line 69` is `puts`, which always returns `nil`. The code will output `"Hello"` and `"Goodbye"`. 

When the method `greetings` gets invoked on `line 93`, the local variable `word` gets passed to it as the argument. `word` becomes and alias for the method paramter `str`. It is similar to the following assignment (str = word). The method now has access to the string object "Hello". On `line 88` we invoke the `puts` method with local variable `str` as the argument. This outputs `"Hello"`. On `line 89` we invoke the `puts` method with the string object `"Goodbye"` as the argument. This outputs `"Goodbye"`. Finally, we get the return value of `nil` due to the last evaluated expression on `line 89`.

The concept demonstrated by this code is local variable scope. Methods have self contained scope so they do not have access to variables defined in the outer scope. However, they are able to access outter scoped variables when they are passed to the method as an argument. Upon method invocation, the object referenced by the argument is assigned to the method parameter (str = "Hello"). This is why we get the string object `"Hello"` when we call `puts str` from within the `greetings` method.

=end


# arr = [1, 2, 3, 4]
# counter = 0
# sum = 0

# loop do
#   sum += arr[counter]
#   counter += 1
#   break if counter == arr.size
# end 

# puts "Your total is #{sum}"

=begin

What does the following code return? What does it output? Why? What concept does it demonstrate?

The code returns `nil` because the last evaluated expression on `line 64` is `break if`, which always returns `nil`. The code outputs `10`. 

On `line 58` we initalize local variable `counter` and assign the integer object 0 to it. On `line 59` we initialize local varibale `sum` and assign the integer object 0 to it. We invoke the `loop` method on `line 61` and pass in the `do..end` block as an argument. Within the block we use the `#+=` method to reassign `sum` the return value of (arr[counter] + sum). We are using index reference to access the elements within the array object assigned to `arr` on each iteration. We increment the variable `counter` by 1 on `line 63` and assign the return value to `counter`. Finally we use a `break if` to exit the loop when local variable `counter` is equal to the array size which is 4. We invoke the `puts` method on `line 67` and pass in the string "Your total is #{sum}" as the argument. We interpolate the value of `sum` into the string to get the final output, "Your total is 10."

The concept demonstrated by this code is local variable scope. Because we initialized the local variables `counter` and `sum` in the outer scope, they were avaiable for use in the inner scope of the block. We were able to use index reference to access each element and calculate the total sum of our array. 

=end

# a = 'Bob'

# 5.times do |x|
#   a = 'Bill'
# end

# p a

=begin

What does the following code return? What does it output? Why? What concept does it demonstrate?

The code returns the integer object 5. This is because the `times` method always returns the calling object. The code ouputs the string object "Bill". This is because when we invoke the `times` method on `line 83`, we pass in the `do..end` block as an argument. Within the block, on `line 84`. We reassign local variable a the string object `Bill` 5 times. Because local variable `a` was initialized outside of the block, in the outter scope, it is avaible in the inner scope of the block. Therefore, we will see the reassignment on `line 84` when we invoke the `p` method with local variable `a` on `line 87`.

The concept demonstrated by this code is local variable scope. Since we initialized local variable `a` on `line 81` in the outer scope, the inner scope defined by the block on `line 83` has access to the variable `a`. Therefore, any schanges we make to local variable `a` in the inner scope will be visible in the outer scope. 

=end

# animal = "dog"

# loop do |_|
#   animal = "cat"
#   var = "ball" 
#   break
# end

# puts animal
# puts var

=begin

What does the following code return? What does it output? Why? What concept does it demonstrate?

The following code returns `nil` because the last evaluated expression on `line 104` is `break`, which always returns `nil`. 

The code outputs the string object "cat" when the `puts` method on `line 107` is invoked with the argument `animal`. However, when the `puts` method is invoked on `line 108` with the argument `var`, we will get an "undefined variable or method name" error message".

This is because on `line 101` a new scope is defined by the `do..end` block following the `loop` method invocation. Any local variables initalized in the inner scope will not be available in the outer scope. Therfore, when we invoke the `puts` method with the argument `var` on `line 108`, we can not access the local variable `var` initialized in the inner scope of the block. 

=end


# animal = "dog"

# loop do |_|
#   animal = "cat"
#   var = "ball"
#   break
# end

# puts animal
# puts var


=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

The folowing code returns `nil` because the last evaluated expression is `break` which always returns `nil`. 

When the `puts` method is invoked on `line 131` and the variable `animal` is passed in as the argument, the code will output `"cat"`. However, when the `puts` method is invoked on `line 132` and the variable `var` is passed in as the argument, we will get a "undefined variable or method name" error message. 

The local variable `animal` is initalized on `line 123` and assigned to the string object `"dog"`. When the `loop` method is invoked on `line 125` and the `do..end` block gets passed to it as the argument, a new scope is created. Any local variables initialized inside of the code block will not be available for use in the outter scope. Therefore, we can not access local variable `var` in the outer scope. However, we can reassign the value of local variable `animal` from the inner scope since it was initialized in the outer scope. 

The concept demonstrated by this code is variable scope. We will never be able to access local variable `var` because it was initialized in the inner scope on `line 127`. 

=end

# n = 101.times do |n| 
#   n = 11
# end

# puts n

=begin

What does the following code return? What does it output? Why? What concept does it demonstrate?

The following code returns `nil` because the last evaulauted expression is the assignment of local variable `n`. 

The `puts` method invoked on `line 152` will output the integer object `101`. This is because the the `times` method will always return the calling object which is the integer `101`. The return value of this method call gets assigned to the local variable `n` on `line 148`. We pass the `do..end` block as the argument to the `times` method. Within the block we have one parameter, `n`, that gets initalized and assigned the integer object `11`. This block executes 101 times, however, we will never see the value of the inner scope `n` because of variable shadowing. 

The concept demonstrated by the code is variable shadowing. This occurs when the parameter name within the pipes ( | | ), has the same name as a local variable initialized in the outer scope. This concept prevents us from being able to access the local variable `n` initlialized from within the block. 

=end

# animal = "dog"

# loop do |animal|
#   animal = "cat" 
#   break
# end

# puts animal

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

The folowing code returns `nil` because the last evaluated expression is `break` which always returns `nil`. 

The `puts` method invoked on `line 173` with local variable `animal` passed in as the argument, will output the string object `"dog`. 

This is because on `line 168` we invoke the `loop` method and pass in the `do..end` block as the argument. The block has one parameter `animal` which gets initlaized and assigned the string object `cat` on `line 169`. Although it appears to be reassignment since we initialized another local variable named `animal` in the outer scope, these are two different variables with the same name, pointing to different objects. 

The concept demonstrated by this code is variable shadowing. This happens when the paramter name has the same name as an outer scoped local variable. If we were to rename the parameter between the pipes ( || ) something other than `animal`, we would be able to better visualize the differences between these two variables. We will not be able to access the `animal` variable in the inner scope with our `puts` invocation on `line 173` because variable shadowing prevents us from doing so.

=end

a = "hi there"
b = a
a = "not here"

=begin

What does the following code return? What does it output? Why? What concept does it demonstrate? What are a and b?

The following code returns `"hi there"` on `line 188` and `line 189`, and "not here" on line 190. 

Nothing will be output by the above code. 

Local variable `a` is initalialized on `line 188` and gets assigned the string `"hi there"`. On `line 189` local variable `b` is initalized and it gets assigned the object local variable `a` is referencing, which is the string `"hi there"`. However, on `line 190` we reassign the local variable `a` the string `"not here"`. Local variable `a` now references a different object than it did on `line 189`. 

Therefore, local variable `a` is pointing to the string `"not here"` and local variable `b` is pointing to the string `"hi there"`.

The concept demonstrated in this code is variables as pointers. Variables are not objects themeselves, however, they are references to a space in memory. We can then use these references or variables to perform methods. 

=end



























=begin
Write a function with the signature shown below:

def is_int_array(arr)
  true
end

- returns true if every element in an array is an integer or a float with no decimals.
- returns true if array is empty.
- returns false for every other input.

Problem: Write a function that takes an array and returns true if every element in the array is an integer or a float with no decimals or if the array is empty.

Examples:
p is_int_array([]) == true
p is_int_array([1, 2, 3, 4]) == true
p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array("") == false
p is_int_array([nil]) == false
p is_int_array([1.0, 2.0, 3.0001]) == false
p is_int_array(["-1"]) == false

Data Structure:
-Conditional Statement
-Iteration 

Algorithm:
-Check each element of the array 
-Return true if:
  -The array's length is equal to zero
  -All the elements in the array are integers
  -All the elements in the array are floats with no decimals 
-Return false if: 
  -Any element in the array is not an integer
  -Any element in the array is a float with decimals
  -Any element is a string

Code:

=end

# def is_int_array(arr)
#   if arr.class != Array 
#     false  
#   elsif arr.empty?
#     true
#   else
#     arr.all? do |element| 
#       element.class == Integer || element == element.to_i
#     end
#   end
# end

# p is_int_array([]) == true
# p is_int_array([1, 2, 3, 4]) == true
# p is_int_array([-11, -12, -13, -14]) == true
# p is_int_array([1.0, 2.0, 3.0]) == true
# p is_int_array([1, 2, nil]) == false
# p is_int_array(nil) == false
# p is_int_array("") == false
# p is_int_array([nil]) == false
# p is_int_array([1.0, 2.0, 3.0001]) == false
# p is_int_array(["-1"]) == false