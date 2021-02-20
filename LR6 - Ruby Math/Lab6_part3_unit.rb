def func1(x)
    x**2 + Math.sin(x/2) - 0
end

def func2(x)
    Math.atan(x) + x - 1
end

def test_function(x)
    x**2 - 1
end



def root(a,b,e, &block)
    loop do
        f1 = block.call(a)
        c = (a + b) / 2.0
        f2 = block.call(c)
            if (f1 * f2 <= 0)   
                b = c
            else 
                a = c
            end
        break if ((b-a).abs() < e)
    end  
    x = (a + b) / 2.0
    f1 = block.call(x)
    if ( f1.abs() <= e) then
        puts "Root (x) with round = #{x.round(3)}"
        puts "Root of equation = #{x}" 
    else
        puts "On given line segment root doesn't exist! "
    end
    x
end
    
    
def draw_separation_line(symbol)
    90.times { print symbol }
    puts ""
end	

