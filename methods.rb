# frozen_string_literal: true

def greet(greeting, name = nil)
  puts "#{greeting}, #{name || 'World'}!"
end

greet('Hello')
greet('Good morning', 'Devesh')

def say(name:, greeting: 'Hello')
  puts "#{greeting}, #{name}."
  name if greeting == 'Hello'
end

say(greeting: 'Good morning', name: 'Devesh')
result = say(name: 'Jane Doe', greeting: 'Hi')

puts result
