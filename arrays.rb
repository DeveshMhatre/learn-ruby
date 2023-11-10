# frozen_string_literal: true

a = [21, 12, 3, 44, 15]

print "#{a}\n"

a[0] *= 2
print "#{a}\n"

a.sort!
print "#{a}\n"

print "#{a.reverse}\n"

a.push(200)
print "#{a}\n"

a.pop
print "#{a}\n"

a.unshift(200)
print "#{a}\n"

a.shift
print "#{a}\n"

puts a.length
puts a.first
puts a.last
puts a.last(3)
puts a.include?(3)

puts "#{'Ruby on Rails'.split(' ').join(' ')}\n"

print 'Ruby on Rails'.scan(/\w/)
