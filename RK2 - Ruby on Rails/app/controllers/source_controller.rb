class SourceController < ApplicationController
    def input; end
    def output

      # definite variables  
      a = params[:val].split.map{|value| value.to_i} # entered array
      @result = 0            # @result value
      sum = 0                # create sum
      sum_counter = 0        # counter for elem in sum
      index_counter = 0      # index counter
      @source = a.dup        # source array (duplicate)
      index = 0              # last even index
      
      # find last even index
      a.each_index { |i|        
        if i.even?               # even element  - odd index
            index = i
            index_counter += 1
        end
      }

      # fund sum of (div 3) elements
      a.map{ |value|
        if value % 3 == 0
            sum += value
            sum_counter += 1
        end
      }

      # ! exceptions !
      if (a.length != 10) 
        @result = "Don't right number of elements"
      elsif (sum_counter == 0)
        @result = "Elements divide by 3 doesn't exist"
      elsif (index_counter == 0)
        @result = "Looking for index doesn't exist"
      elsif (sum_counter == 1)
        @result = "Incorrect number of elements"
      else # result pass from all conditions
        @result = sum
        a[index] = sum
        @new_arr = a
      end     

    end
end
