# frozen_string_literal: true
require 'nokogiri'

class InputController < ApplicationController
  def input; end

  def output; end
  
  def count
    n = params[:n].to_i
    test_num = 0
    armstrong_array = []

    # number -> string -> array of string dig -> array of dig -> count in block number. of array of digits -> compare source num and calculated num 

    (10**(n-1)...10**n).map do |number|
    arr_digits = number.inspect.split("").map(&:to_i)    # array of digits in number

    arr_digits.map do |d_value| 
        test_num += d_value**n 
    end
    
    if (test_num == number) then armstrong_array << number end 
        test_num = 0
    end 
    
    @result = armstrong_array
    @count = armstrong_array.size
    
    xml = Nokogiri::XML::Builder.new { |table|
    table.body do
      @result.each_index { |i|
        table.row do
          table.id i+1
          table.a_number @result[i]
        end
      }
    end
  }
  
    render xml: xml
  end

end
