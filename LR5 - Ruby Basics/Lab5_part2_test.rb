# frozen_string_literal: true

# Lab5_part2_test.rb
require './Lab5_part2_unit.rb'
require 'minitest/autorun'

class TestStrings < MiniTest::Test
  def test_string1
    assert check_mas, 'Error in array offset'
  end
end

def check_mas
  draw_separation_line('-')
  puts "\t \t \t \t Test random array: "
  test_array = Array_of_Strings.new(0)
  key1 = test_array.generate_rand_array
  test_array.display_source_array
  key2 = test_array.symbols_offset
  test_array.display_changed_array
  draw_separation_line('-')
  return true if (key1 == true) && (key2 == true)
end

#     # Random Array of strings (check in class declaration)
#     arr_s = Array_of_Strings.new(0)
#     string = []
#     rand(2..5).times { |each_row|
#         string = (3..rand(3..10)).map { |i|
#             (('a'..'z').to_a.sample(rand(5..13)) + [" "]).join
#         }.join
#         arr_s << string
#         strings = ""
#     }
#     puts arr_s
# end

# sample() -- length of word from 5 raise to 13
# 1-st join -- join one word
# 2-nd join -- join all
