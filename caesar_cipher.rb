# frozen_string_literal: true

def apply_shift_factor(char_code, shift_factor, low, high)
  new_char_code = char_code + shift_factor
  new_char_code -= 26 unless new_char_code.between?(low, high)

  new_char_code
end

def caesar_cipher(msg:, shift_factor: 0)
  msg unless shift_factor != 0

  char_codes = msg.bytes.map do |char_code|
    new_char_code = char_code

    new_char_code = apply_shift_factor(char_code, shift_factor, 65, 90) if char_code.between?(65, 90)

    new_char_code = apply_shift_factor(char_code, shift_factor, 97, 122) if char_code.between?(97, 122)

    new_char_code
  end

  char_codes.pack('c*')
end

print 'Enter a message: '
msg = gets.chomp

puts caesar_cipher(msg: msg, shift_factor: 5)
