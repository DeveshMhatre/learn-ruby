# frozen_string_literal: true

puts 10 * 5
puts 1_000_000 * 2
puts 10.to_f
puts 10.3.ceil
puts 10.3.round
puts 10.3.floor

puts "7 < 3 => #{7 < 3}"
puts "7 > 3 => #{7 > 3}"
puts "7 != 3 => #{7 != 3}"
puts "7 == 3 => #{7 == 3}"
puts "7 <=> 3 => #{7 <=> 3}"
puts "7 <=> 7 => #{7 <=> 7}" # rubocop:disable Lint/BinaryOperatorWithIdenticalOperands
puts "7 <=> 7 => #{3 <=> 7}"

5.times do |n|
  puts "Hello, #{n}"
end
