# ruby Lab7_part1_main.rb
 
require './Lab7_part1_unit.rb'
require './Lab7_part1_test.rb'


# line ======================================
draw_separation_line("=")


# write data in file F -------------------------------

f = MyFile.new; f.set_file_F("f", "w")
if f
    puts "File F is succesfully created..."
    
    puts "Enter number of sequences: "
    n = gets.chomp.to_i # lines in file F
    f.generate_data(n)
    
    puts"Data is succesfully generated..."
else
    puts "Unable to open file!"
end

f.closeF()

# work with file G -------------------------------
g = MyFile.new; g.set_file_G("g", "w")
if g 
    puts "File G is succesfully created..."
    puts "Please, choose operation with file: "
    puts "1 - string with 5 elements;"
    puts "2 - string with 20 elements;"
    selection = gets.chomp.to_i
        
        if (selection == 1) 
            g.get_elem_by_five(n*2)
        else
            g.get_elem_by_twenty(n/2)
        end

    puts "Data converted in file G..."
    #g.read_and_test_fileG
else
    puts "Unable to open file!"
end
g.closeG()


# line ======================================
draw_separation_line("=")

