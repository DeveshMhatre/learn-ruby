# frozen_string_literal: true

a = 'Hello, World!'
puts a.upcase
puts a.downcase
puts a.reverse
puts a.sub('Hello', 'Good morning')
puts a.include?('Hello')
puts a =~ /Hello/
puts a.match?(/hello/)
puts a.gsub('l', 's')

b = "2 + 2 = #{2 + 2}"
puts b
puts b.class

puts "hello#{' world' * 5}"
