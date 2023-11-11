# frozen_string_literal: true

2.times do
  puts 'here'
end

8.upto(10) do |i|
  puts i # 8 to 10 (inclusive)
end

10.downto(8) do |i|
  puts i # 10 to 8 (inclusive)
end

first_num = 8

while first_num <= 10
  puts 'not greater than or equal to 10'
  first_num += 1
end

second_num = 8

until second_num > 10
  puts 'not greater than 10'
  second_num += 1
end

nums = [1, 2, 3, 4, 5]

nums.each do |num|
  puts num
end

negative_nums = [-5, -4, -3, -2, -1]

# positive_nums = negative_nums.map { |num| num.abs }
positive_nums = negative_nums.map(&:abs) # same as above line

p positive_nums
p negative_nums

# read more later
def some_numbers(arr_of_nums, &code_block)
  arr_of_nums.each { |num| code_block.call(num) if block_given? }
end

some_numbers(negative_nums) do |num|
  puts num.abs
end

some_numbers(negative_nums)

# read more later
def some_more_numbers(arr_of_nums)
  arr_of_nums.each { |num| yield num if block_given? }
end

some_more_numbers(negative_nums) do |num|
  puts num * num
end

some_more_numbers(negative_nums)

print_capitalize_name = proc { |name| puts name.capitalize }

print_capitalize_name.call('devesh')

names = %w[john jane]

names.each(&print_capitalize_name)

capitalized_names = names.map(&:capitalize)

p capitalized_names
