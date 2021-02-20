class Word < String
    attr_accessor :word
    
    def initialize(str)
        @word = str
    end

    def get_word()
        @word
    end

    def get_length()
        @word.length()
    end

    def display()
        puts "word: #{@word}"
    end

    def get_vovel
        k = 0
        vovel_mult = ["a","e","y","u","i","o"]
        @word.split("").to_a.map{ |elem|
            if (vovel_mult.include?(elem)) then 
                k += 1
            end
        }
        return k
    end

end


class WholeWord < Word
    attr_accessor :word_size

    def initialze(new_str)
        super(new_str)
        @word_size = get_length()
    end

    def display()
        puts "Word: #{@word}"
        puts "Size of word: #{get_length}"
    end

    def get_whole_word_size()
        @word_size
    end

    def get_concon()
        get_length() - get_vovel()
    end    

end


def draw_separation_line(symbol)
    90.times { |draw_line| print symbol }
    puts ""
end	
