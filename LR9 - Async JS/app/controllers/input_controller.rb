# frozen_string_literal: true

class InputController < ApplicationController
  def input; end

  def output
    n = params[:val].to_i
    test_num = 0
    armstrong_array = []

    # number -> string -> array of string dig -> array of dig -> count in block number. of array of digits -> compare source num and calculated num

    (10**(n - 1)...10**n).map do |number|
      arr_digits = number.inspect.split('').map(&:to_i) # array of digits in number

      arr_digits.map do |d_value|
        test_num += d_value**n
      end

      armstrong_array << number if test_num == number
      test_num = 0
    end

    @result = armstrong_array
    @count = armstrong_array.size

    render json: @result
  end
end
