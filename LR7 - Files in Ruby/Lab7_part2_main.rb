#!env ruby
# ruby Lab7_part2_main.rb
 
require './Lab7_part2_unit.rb'
require './Lab7_part2_test.rb'

# line ===============================================
draw_separation_line("=")




puts "Check Class Word: "
#------------------------#
myword = Word.new("Hello")
myword.display()
puts "Number of characters in word #{myword.get_length()}"
puts "Number of vovel elemnets in word : #{myword.get_vovel}"
#------------------------#

draw_separation_line("-")

puts "Check Class WholeWord"
#------------------------#
word_info = WholeWord.new("welcome")
word_info.display()
puts "Number of consonants elemnets in word : #{word_info.get_concon}"
puts "Number of vovel elemnets in word : #{word_info.get_vovel}"

#------------------------#

draw_separation_line("=")