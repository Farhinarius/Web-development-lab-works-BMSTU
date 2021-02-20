# Lab5_part1_main.rb
# frozen_string_literal: true

require './Lab5_part1_unit.rb'
require './Lab5_part1_test.rb'

# input x
puts 'Enter x:'
x = gets.chomp.to_f

# input z
puts 'Enter z:'
z = gets.chomp.to_f

# input r
puts 'Enter r:'
r = gets.chomp.to_f

# deisplay value y
display_value(calculate(x, z, r))

