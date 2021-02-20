# frozen_string_literal: true

class InputController < ApplicationController
  def input; end

  def output
    n = params[:val].to_i
    test_num = 0
    key = 0
    armstrong_array = []
    @query = Query.new
    @queries = Query.all

    @queries.each do |current_query|
      next unless current_query.digit == n

      @query = current_query.dup # create new query in table queries
      @result = @query.arm_num.split(', ')
      @count = @query.arm_num.split(', ').size
      key = 1
    end

    if key != 1
      # number -> string -> array of string dig -> array of dig -> count in block number. of array of digits -> compare source num and calculated num
      (10**(n - 1)...10**n).map do |number|
        arr_digits = number.inspect.split('').map(&:to_i) # array of digits in number

        arr_digits.map do |d_value|
          test_num += d_value**n
        end

        armstrong_array << number if test_num == number
        test_num = 0
      end

      # add query to table queries
      @result = armstrong_array
      @count = armstrong_array.size

      @query.digit = n
      @query.arm_num = armstrong_array.join(', ')
    end
    @query.save
  end

  def queries
    @queries = Query.all
  end

  def destroy
    @query = Query.last
    @query.destroy

    redirect_to '/input/queries'
  end

  # private
  # def number_params
  # params.require(:query).permit(:digit)
  # end
end
