# frozen_string_literal: true

# Lab5_part1_test.rb

require 'minitest/autorun'
require './Lab5_part1_unit.rb'

# Class for Testing
class MyTestCase < MiniTest::Test
  def test_calculation
    assert_in_delta 0.18, calculate(5, 0, 5), 0.01 # 0.18
    assert_in_delta 0.34, calculate(1, 0, 1), 0.01 # 0.34
    assert_in_delta 0.19, calculate(2, 0, 1), 0.01 # 0.19
  end
end
