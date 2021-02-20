# functions and classes declaration

class MyFile 
    attr_accessor :file_f, :file_g
    
    def set_file_F(filename,type_of_work)
        @file_f = File.new(filename, type_of_work)
    end

    def set_file_G(filename,type_of_work)
        @file_g  = File.new(filename, type_of_work)
    end

    def generate_data(n)
        arr_n = []
        n.times { 
           # generate array of plus elements
           0.upto(9) {
               arr_n << rand(1..50)
           }
           
           # write array of plus 
           # (more than 0 (+ 10 elements))
           @file_f.syswrite(arr_n.join(" "))
           @file_f.syswrite("\n")
           arr_n = []

           # generate array of minus elements
           0.upto(9) {
               arr_n << rand(-50..-1)
           }    

           # write array of minus (less than 0 (- 10 elements))
           @file_f.syswrite(arr_n.join(" "))
           @file_f.syswrite("\n")
           arr_n = []
        }
    end

    def get_elem_by_five(seq_num)
        line_counter = 0
        arr_plus = []
        arr_minus = []
        File.open("f","r") { |f|            #=> @file_f.open
            f.each { |line| 
                
                line_counter += 1 # new line, count it!
                
                if (line_counter.odd?) then  
                    arr_plus << line.split(" ").map(&:to_i)
                end

                if (line_counter.even?) then 
                    arr_minus << line.split(" ").map(&:to_i)
                end
            }
        }
        draw_separation_line("-")
        puts line_counter
        
        arr_plus.flatten!   #arr_plus is matrix
        arr_minus.flatten!  #arr_minus is matrix

        
        # create file g1 and filtered data
        arr_data = []
        seq_num.times{
                
                arr_plus.each_index { |index|
                    if index < 5
                        @file_g.syswrite(arr_plus[index].inspect + " ") 
                        arr_data << arr_plus[index]
                    end
                }
                @file_g.syswrite("\n")
                5.times {arr_plus.delete_at(0) }
                

                arr_minus.each_index { |index|
                    if index < 5
                        @file_g.syswrite(arr_minus[index].inspect + " ") 
                        arr_data << arr_minus[index]
                    end
                }
                @file_g.syswrite("\n")
                5.times {arr_minus.delete_at(0) }
        }
        print "Array of all data in file g(5): #{arr_data} \n"
        return arr_data
    end

    
    def get_elem_by_twenty(seq_num)
        line_counter = 0
        arr_plus = []
        arr_minus = []

        File.open("f","r") { |f|            #=> @file_f.open
            f.each { |line| 
                
                line_counter += 1 # new line, count it!
                
                if (line_counter.odd?) then  
                    arr_plus << line.split(" ").map(&:to_i)
                end

                if (line_counter.even?) then 
                    arr_minus << line.split(" ").map(&:to_i)
                end
            }
        }
          
        arr_plus.flatten!
        arr_minus.flatten!

        # create file g1 and filtered data
        seq_num.times{
                
                arr_plus.each_index { |index|
                    if index < 20
                        @file_g.syswrite(arr_plus[index].inspect + " ") 
                    end
                }
                @file_g.syswrite("\n")
                20.times {arr_plus.delete_at(0) }
                

                arr_minus.each_index { |index|
                    if index < 20
                        @file_g.syswrite(arr_minus[index].inspect + " ") 
                    end
                }
                @file_g.syswrite("\n")
                20.times {arr_minus.delete_at(0) }
        }
    end

    def read_and_test_file()
        str = File.read('g')
        file_arr = str.split.map(&:to_i)
        print "File data array: #{file_arr} \n"
        
        counter_plus = 0
        counter_minus = 0
        test_value = false
        
        file_arr.each{ |elem|
            
            if elem > 0 then counter_plus += 1 end
            
            if elem < 0 then counter_minus += 1 end

            if (counter_plus == counter_minus) 
                test_value = true 
            end
        }
        
        print "Number of plus elem: #{counter_plus} \n"
        print "Number of minus elem: #{counter_minus} \n"
        test_value
    end
    

    
    def closeF()
        @file_f.close()
        puts "File F is closed!"
    end

    def closeG()
        @file_g.close()
        puts "File G is closed!"
    end
end

# line ===============================================================
def draw_separation_line(symbol)
    90.times { |draw_line| print symbol }
    puts ""
end

