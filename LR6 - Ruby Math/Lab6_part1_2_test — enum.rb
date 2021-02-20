# Lab6_part1_test.rb

require 'minitest/autorun'
require './Lab6_part1_unit.rb'
require './Lab6_part1_main.rb'

class MyTestCase < MiniTest::Test
    def test_calculation
        assert_in_delta $var2, $var1, 0.0001
    end
end