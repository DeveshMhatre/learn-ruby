# frozen_string_literal: true

def find_substrings(sentence, dict)
  substrings_hash = {}

  dict.each do |word|
    word_keys = sentence.downcase.scan(word)

    next if word_keys.empty?

    word_keys.each do |word_key|
      substrings_hash[word_key] += 1 if substrings_hash.key?(word_key)
      substrings_hash[word_key] = 1 unless substrings_hash.key?(word_key)
    end
  end

  substrings_hash
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts find_substrings('below', dictionary)
puts find_substrings("Howdy partner, sit down! How's it going?", dictionary)
