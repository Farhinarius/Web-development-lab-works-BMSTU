# Lab6_part3_test.rb

require 'minitest/autorun'
require './Lab6_part3_unit.rb'

class MyTestCase < MiniTest::Test
  def test_calculation
    square = Proc.new { |x|
      test_function(x)
    }
    assert_in_delta 1, root(a = 0, b = 2, e = 0.001, &square) 
  end
end

