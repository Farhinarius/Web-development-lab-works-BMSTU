# Lab7_part2_test.rb

require 'minitest/autorun'
require './Lab7_part2_unit.rb'

class MyTestCase < MiniTest::Test
    def test_class()
        test_word = WholeWord.new("faramara")
        assert_equal "faramara", test_word.get_word()
        assert_equal 8, test_word.get_length() 
        assert_equal 4, test_word.get_vovel()
        assert_equal 4, test_word.get_concon()
    end
end