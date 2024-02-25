# Class with a method add that adds numbers provided as strings
class StringCalculator
  def self.add(input)
    return 0 if input.empty?

    inputs = input.split(',').each(&:to_i)
    inputs.reduce(0) { |sum, num| sum + num.to_i }
  end
end
