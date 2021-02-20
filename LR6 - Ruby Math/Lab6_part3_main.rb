#ruby Lab6_part3_main.rb
 
require './Lab6_part3_unit.rb'
require './Lab6_part3_test.rb'

# PROGRAM START
draw_separation_line("-")

E = 0.0001
# work with Proc block call of function
puts "Enter line segment, where can be root of equation: x**2 + Math.sin(x/2) - 0"
a = gets.chomp.to_f         # 1-st point of line segment 
b = gets.chomp.to_f         # 2-nd point of line segment

f1 = Proc.new { |x|
    func1(x)
}

root(a,b,E, &f1);

# line ===========================================================
draw_separation_line("-")

puts "Enter line segment, where can be root of equation: Math.atan(x) + x - 1"
a = gets.chomp.to_f         # 1-st point of line segment 
b = gets.chomp.to_f         # 2-nd point of line segment

f2 = Proc.new { |x|
    func2(x)
}

root(a,b,E, &f2) 

# line ===========================================================
draw_separation_line("-")

# work with lambda call of function
puts "Enter line segment, where can be root of equation: x**2 + Math.sin(x/2) - 0"
a = gets.chomp.to_f         # 1-st point of line segment 
b = gets.chomp.to_f    
lambda = ->(x) { func1(x) } 
root(a, b, E, &lambda)


# line ===========================================================
draw_separation_line("-")

puts "Enter line segment, where can be root of equation: Math.atan(x) + x - 1"
a = gets.chomp.to_f         # 1-st point of line segment 
b = gets.chomp.to_f    
lambda = ->(x) { func2(x) } 
root(a, b, E, &lambda)


# PROGRAM END
draw_separation_line("-")
