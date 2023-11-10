# frozen_string_literal: true

creds = {
  public_key: 'aldjfadkljf',
  secret_ket: '3823kdk28'
}

creds[:region] = 'us_east_2'
puts creds

creds.delete(:region)

puts creds.keys
puts creds.values

puts creds.length

creds[:sample] = {
  name: 'John'
}

puts creds[:sample][:name]
puts creds.dig(:sample, :name)

creds[:hobbies] = %w[Gaming Reading]

puts creds[:hobbies].length

creds[:hobbies].each do |hobby|
  puts hobby.upcase
end

creds.each do |key, value|
  puts "#{key}: #{value}"
end

puts creds[:public_key]

new_hash = { 'name' => 'Devesh' }
puts new_hash['name']
