# Practice Problem 1
# How would you order this array of number strings by descending numeric value?

# arr = ['10', '11', '9', '7', '8']
# p arr.sort_by { |num| num.to_i }.reverse
# p arr.sort { |a, b| b.to_i <=> a.to_i }

# Practice Problem 2
# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# p books.sort_by { |book| book[:published] }

# Practice Problem 3
# For each of these collection objects demonstrate how you would reference the letter 'g'.

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# p arr1[2][1][3]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# p arr2[1][:third][0]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# p arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# p hsh1['b'][1]

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# p hsh2[:third].key(0)

# Practice Problem 4
# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
# p arr1

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4
# p arr2

# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2][0] = 4
# p hsh1

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4
# p hsh2

# Practice Problem 5
# Given this nested Hash, figure out the total age of just the male members of the family.

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_age = 0
# munsters.each do |munster|
#   total_age += munster[1]['age'] if munster[1]['gender'] == 'male'
# end
# p total_age

# Practice Problem 6
# One of the most frequently used real-world string properties is that of "string substitution",
# where we take a hard-coded string and modify it with various parameters from our program.

# Given this previously seen family hash, print out the name, age and gender of each family member:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# Solution 1 without key value block parameters.
# munsters.each do |member|
#   puts "#{member[0]} is a #{member[1]['age']}-year-old #{member[1]['gender']}."
# end

# Solution 2 with key value block parameters.
# munsters.each do |name, details|
#   puts "#{name} is a #{details['age']}-year-old #{details['gender']}."
# end

# Practice Problem 7
# Given this code, what would be the final values of a and b? Try to work this out without running the code.

# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2
# arr[1][0] -= a
# # a = 2. The object referenced by arr[0] is immutable.
# # b = [3, 8]. The object referenced by arr[1] is mutable.

# # Further exploration for problem 7
# a = 1
# b = [2]
# c = [3, 4]
# arr = [a, b, c]

# arr[0] += 1 # arr = [2, [2], [3, 4]], a = 1
# arr[1][0] += 1 # arr = [2, [3], [3, 4], b = [3]
# arr[2][0] -= a # arr = [2, [3], [2, 4]], c = [2, 4]

# p arr, a, b, c

# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each do |_, value|
#   value.each do |string|
#     string.chars.each do |char|
#       puts char if char.match(/[aeiou]/i)
#     end
#   end
# end

# Practice Problem 9
# Given this data structure,
# return a new array of the same structure
# but with the sub arrays being ordered
# (alphabetically or numerically as appropriate)
# in descending order.

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map do |set|
#   set.sort do |a, b|
#     b <=> a
#   end
# end

# p arr

# Practice Problem 10
# Given the following data structure
# and without modifying the original array,
# use the map method
# to return a new array
# identical in structure to the original
# but where the value of each integer is incremented by 1.

# array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# Solution with Hash#transform_values, which returns a new Hash object.
# new_array = array.map do |hash|
#   hash.transform_values do |value| #
#     value += 1
#   end
# end

# Suggested solution with a new Hash object.
# array.map do |hash|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end

# p array, new_array

# Practice Problem 11
# Given the following data structure
# use a combination of methods, including either the select or reject method,
# to return a new array
# identical in structure to the original
# but containing only the integers that are multiples of 3.

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# new_arr = arr.map do |sub_arr|
#   sub_arr.select do |num|
#     num % 3 == 0
#   end
# end

# p arr, new_arr

# Practice Problem 12
# Given the following data structure,
# and without using the Array#to_h method,
# write some code that will return a hash
# where the key is the first item in each sub array
# and the value is the second item.

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# hsh = Hash.new

# arr.each do |sub_arr|
#   hsh[sub_arr[0]] = sub_arr[1]
# end

# p arr, hsh

# Practice Problem 13
# Given the following data structure,
# return a new array containing the same sub-arrays as the original
# but ordered logically by only taking into consideration the odd numbers they contain.

# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# new_arr = arr.sort_by do |set|
#   set.select do |num|
#     num if num.odd?
#   end
# end

# p arr, new_arr

# Practice Problem 14
# Given this data structure
# write some code to return an array
# containing the colors of the fruits and the sizes of the vegetables.
# The sizes should be uppercase and the colors should be capitalized.

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# Implementation 1 - Hash#each_with_object
# new_arr = hsh.each_with_object([]) do |produce, array|
#   case produce[1][:type]
#   when 'fruit'
#     array << produce[1][:colors].map { |color| color.capitalize }
#   when 'vegetable'
#     array << produce[1][:size].upcase
#   end
# end

# Implementation 2 - Hash#each
# arr = []

# hsh.each_value do |details|
#   case details[:type]
#   when 'fruit'
#     arr << details[:colors].map { |color| color.capitalize }
#   when 'vegetable'
#     arr << details[:size].upcase
#   end
# end

# Implementation 3 - Enumerable#map (recommended)

# arr = hsh.map do |_, value|
#   case value[:type]
#   when 'fruit'
#     value[:colors].map { |color| color.capitalize }
#   when 'vegetable'
#     value[:size].upcase
#   end
# end

# p arr

Practice Problem 15
Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]