load 'terminal-helper-functions.rb'


#Terminal Front-End: Receiving User Input

class Parameters
    attr_accessor :parameter, :value
    def initialize
        @parameter = default
    end
    def default
        lowercase = ('a'...'z').to_a
    end
    def add(parameter,value)
        puts "Would you like to add " + parameter + " into your password? y/n"
        dx = gets.chomp.to_s
        if include_parameter(dx) == true
            return @parameter = default + value
        else
            return []
        end
    end
end   

def pwlength
    puts "how long did you want your password?"
    length = gets.chomp.to_f
    return realnumber(length).to_i
end


# Loops
# invalid number loop - only relevant to terminal based pwgenerators
def invalidnumberloop(length)
    loop do
        puts "that's not a valid number"
        length = gets.chomp.to_f
        break if ispositive(length) == true
    end
    return length.to_i
end
# Loops
# invalid answer loop - only relevant to terminal based pwgenerators
def invalidanswerloop (x)
    loop do 
        puts "incorrect format, try again - please select y/n"
        x = gets.chomp.to_s
        break if validanswer(x) == true
    end
    return x
end
