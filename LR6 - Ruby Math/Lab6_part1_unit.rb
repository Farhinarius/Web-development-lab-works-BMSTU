# Lab6_part1_unit.rb
class Cycle 
    attr_accessor :R, :length_of_circle, :polygon_side, :native_length   # a
    
    # e = 0.001 and 0.0001
    def initialize(radius, length, a)
        @R = radius
        @length_of_circle = length
        @polygon_side = a
    end

    def input_radius()
        puts "Enter radius of cycle: "
        @R = gets.chomp.to_f
    end

    def set_polygon_side(number_of_lines) 
        @polygon_side = 2 * @R * Math.sin(Math::PI / number_of_lines)
        puts "Side of (#{number_of_lines}-sided Polygon)  = #{@polygon_side}"
    end

    def check_cycle_length() 
        @native_length = Math::PI * 2 * @R
        @native_length
    end

    def count_length()
        number_of_lines = 6
        side_N2 = 0
        limit = 50
        length = 0.0

        while ((length - check_cycle_length()).abs > 0.0001) do           # length != @native_length    
            set_polygon_side(number_of_lines)           
            side_N2 = Math.sqrt(2*(@R **2) - 2*@R*Math.sqrt(@R**2 - ((@polygon_side) ** 2) / 4))
            length = side_N2 * number_of_lines * 2
            puts "Side of (#{number_of_lines * 2}-sided Polygon) = #{side_N2}"
            puts "Cycle Length of (#{number_of_lines * 2}-sided Polygon) = #{length}"
            draw_separation_line("-")
            number_of_lines += 1
            limit -= 1
        end
        @length_of_circle = polygon_side * number_of_lines
        puts "Approximate calculation length of circle = #{@length_of_circle}"
        @length_of_circle = length
        return @length_of_circle
    end


    def display_length()
        puts "Accurate calculation length of circle = #{@length_of_circle}" 
        puts "Native length of circle = #{check_cycle_length()}"
    end
end



def draw_separation_line(symbol)
    90.times { |draw_line|
        print symbol
    }
    puts ""
end	
