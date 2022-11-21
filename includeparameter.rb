#logic
#Input 1 - what symbols and values are eligible?
#loop to extract answer
def include_parameter(x)
    if validanswer(x) == true
        return returnedyes(x)
    else 
        return returnedyes(invalidanswerloop(x))
    end
end

def invalidanswerloop (x)
    loop do 
        puts "incorrect format, try again - please select y/n"
        x = gets.chomp.to_s
        break if validanswer(x) == true
    end
    return x
end

# loop if anything but yes or no.
def validanswer(tf_statement)
    if tf_statement == 'y'
        return true
    elsif tf_statement == 'n'
        return true
    else
        return false
    end
end
# yes/no logic
def returnedyes(tf_statement)
    if tf_statement == 'y'
        return true
    else
        return false
    end
end
