load 'display.rb'
load 'pwgenerator.rb'
load 'terminal-helper-functions.rb'

#allowable characters for pw generator
def allowablecharacters
    passwordparameters = Parameters.new
    passwordparameters.add('numbers',(0...9).to_a)
    passwordparameters.add('UPPERCASE',('A'...'Z').to_a)
    passwordparameters.add('symbols',['!','@','#','$','%','^','&','*','(',')',',','|'])
    allowablecharacters = passwordparameters.parameter
end


#App Logic
loop do 
    generator(allowablecharacters,pwlength)
    puts "do you want to generate another password? (y/n)"
    y = gets.chomp.to_s
    break if y == "n"
end


