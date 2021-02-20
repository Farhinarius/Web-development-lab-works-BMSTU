# frozen_string_literal: true

def calculate(x, z, r)
  Math.cos(x + 3.1 * z) / Math.tan(x / r)
end

def display_value(y)
  puts "y = #{y}"
end
