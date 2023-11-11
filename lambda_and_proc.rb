# frozen_string_literal: true

l = ->(name) { puts "Hello from Lambda, #{name}" } # important
p = proc { |name| puts "Hello from Proc, #{name}" }

l.call('Devesh')
p.call

# return nil as the program continues executing despite the return stmt
def labmda_return_example
  puts 'inside method body'
  l = -> { return 5 }
  l.call
  puts 'after lambda call'
end

# return 6 as the program exits after the return stmt
def proc_return_example
  puts 'inside method body'
  p = proc { return 6 }
  p.call
  puts 'after proc call'
end

a = labmda_return_example
b = proc_return_example

puts a
puts b
