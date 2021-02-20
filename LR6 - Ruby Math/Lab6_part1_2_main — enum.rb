# ruby Lab6_part1_main.rb
 
require './Lab6_part1_unit.rb'
require './Lab6_part1_test.rb'


# input in block limit of number line

draw_separation_line("=")

cycle = Cycle.new(3,0,0) 
cycle.input_radius()
$var1 = cycle.count_length()
cycle.display_length()

$var2 = cycle.check_cycle_length()
draw_separation_line("=")




















