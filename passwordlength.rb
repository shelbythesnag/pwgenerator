#Input 2 - Get Password length
def pwlength
    puts "how long did you want your password?"
    length = gets.chomp.to_f
    return realnumber(length).to_i
end
def realnumber (length)
    if positive(length) == true
        return length.to_i
    else 
        invalidnumberloop(length)
    end
end
def invalidnumberloop(length)
    loop do
        puts "that's not a valid number"
        length = gets.chomp.to_f
        break if positive(length) == true
    end
    return length.to_i
end
def positive(x)
    if x > 0
        return true
    else 
        return false
    end
end