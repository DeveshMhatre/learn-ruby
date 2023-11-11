# frozen_string_literal: true

# House class with color attribute
class House
  @@count = 0 # rubocop:disable Style/ClassVars

  # Singleton method, as it is only available for the House class itself
  def self.count
    @@count
  end

  # self is implicit here, for both count and name class vars
  def self.report_count_of_instances
    "There are #{count} instances of the #{name} class."
  end

  attr_accessor :color, :style # same as line 35 + line 41

  def initialize(color, style)
    @color = color
    @style = style

    @@count += 1 # rubocop:disable Style/ClassVars
  end

  # self is implicit here, for both color and style class instance vars
  def details
    "This house is a #{color}, #{style} house instance."
  end

  # def color
  #   @color
  # end

  # attr_reader :color # same as above method

  # def color=(new_color)
  # 	@color = new_color
  # end

  # attr_writer :color # same as above method
end

puts House.report_count_of_instances

first_house = House.new('red', 'victorian')

puts House.report_count_of_instances

puts first_house.details

first_house.color = 'white'
first_house.style = 'modern'

puts first_house.details
