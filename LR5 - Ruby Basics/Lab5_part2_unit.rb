# frozen_string_literal: true

class Array_of_Strings < Array
  attr_accessor :arr_s

  # array init
  def initialize(array)
    @arr_s = if array.size == 0 or (array == 0)
               [] # this is array
             else
               array
             end
  end

  def symbols_offset
    string = 0
    symbol = 0

    abc = ('a'..'z').to_a
    alpha_index = 0

    while string < @arr_s.size # number of strings in array

      while symbol < @arr_s[string].size # number of symbol in current string

        # increase alphabet symbol counter
        while (@arr_s[string][symbol] != abc[alpha_index]) && (@arr_s[string][symbol] != ' ')
          alpha_index += 1
        end

        #  # offset action, find concequence
        if @arr_s[string][symbol] == 'z' #=>
          @arr_s[string][symbol] = 'a'

        elsif @arr_s[string][symbol] == abc[alpha_index] # if find
          @arr_s[string][symbol] = abc[alpha_index + 1] # change symbol

        end

        symbol += 1     # check next symbol
        alpha_index = 0 # set alphabet 0 index
      end
      symbol = 0  # new symbols in new string
      string += 1 # check next string
    end
    true
  end

  def input_values
    string = []
    puts 'Input array of strings:'
    loop do
      string = gets.chomp # input string
      break if string.empty? # break when string is void -> stop input

      @arr_s << string # @arr_s.push(strings)
    end
  end

  def generate_rand_array
    # @arr_s = Array_of_Strings.new(0)
    string = [] # create empty strings
    rand(2..5).times do |_each_row|
      string = (1..rand(3..10)).map do |_each_word| # generate random strings
        (('a'..'z').to_a.sample(rand(5..13)) + [' ']).join
      end.join
      @arr_s << string # add strings to array
    end
    true
  end

  def display_source_array
    draw_separation_line('-')
    puts 'Source array: '
    @arr_s.each { |elem| puts elem }
  end

  def display_changed_array
    draw_separation_line('-')
    puts 'Changed array: '
    @arr_s.each { |elem| puts elem }
  end
end

def draw_separation_line(symbol)
  90.times do |_draw_line|
    print symbol
  end
  puts ''
end
