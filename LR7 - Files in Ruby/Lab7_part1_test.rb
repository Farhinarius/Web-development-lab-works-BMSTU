# Lab7_part1_test.rb

require 'minitest/autorun'
require './Lab7_part1_unit.rb'



class MyTestCase < MiniTest::Test   
    def test_files()
        g = MyFile.new; g.set_file_G("g","r")
        assert g.read_and_test_file
    end
end

