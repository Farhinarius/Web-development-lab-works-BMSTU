# frozen_string_literal: true

# ruby Lab5_part2_main.rb
#
require './Lab5_part2_unit.rb'
require './Lab5_part2_test.rb'

draw_separation_line('-')

array_of_strings = Array_of_Strings.new(0) # [] try

array_of_strings.input_values
array_of_strings.display_source_array

# puts array_of_strings[0][0] # check that this is array of array's
array_of_strings.symbols_offset

array_of_strings.display_changed_array

draw_separation_line('-')
