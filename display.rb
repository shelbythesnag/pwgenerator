load 'includeparameter.rb'
load 'passwordlength.rb'

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

def newpw
    passwordparameters = Parameters.new
    passwordparameters.add('numbers',(0...9).to_a)
    passwordparameters.add('UPPERCASE',('A'...'Z').to_a)
    passwordparameters.add('symbols',['!','@','#','$','%','^','&','*','(',')',',','|'])
    newpw = passwordparameters.parameter
end

puts newpw


