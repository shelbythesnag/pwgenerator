#Input 2 - Get Password length

def realnumber (num)
    if ispositive(num) == true
        return num.to_i
    else 
        invalidnumberloop(num)
    end
end

def ispositive(num)
    if num > 0
        return true
    else 
        return false
    end
end

#logic
#Input 1 - what symbols and values are eligible?
#loop to extract answer
def include_parameter(input)
    if validanswer(input) == true
        return returnedyes(input)
    else 
        return returnedyes(invalidanswerloop(input))
    end
end

# loop if anything but yes or no.
def validanswer(input)
    if input == 'y'
        return true
    elsif input == 'n'
        return true
    else
        return false
    end
end
# yes/no logic
def returnedyes(input)
    if input == 'y'
        return true
    else
        return false
    end
end
