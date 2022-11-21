#logic
#is input number? or not
def check_numberlogic (x)
    if x > 0
        return true
    else 
        return false
    end
end

#loop to extract answer
def check_yn_logicloop(x)
    if nilor_yesorno(x) == true
        return yes_orno(x)
    else 
        return yes_orno(loop_yn(x))
    end
end

# yes/no logic
def yes_orno(tf_statement)
    if tf_statement == 'y'
        return true
    else
        return false
    end
end

# loop if anything but yes or no.
def nilor_yesorno(tf_statement)
    if tf_statement == 'y'
        return true
    elsif tf_statement == 'n'
        return true
    else
        return false
    end
end

def loop_yn (x)
    loop do 
        puts "incorrect format, try again - please select y/n"
        x = gets.chomp.to_s
        break if nilor_yesorno(x) == true
    end
    return x
end

#display - retrieving input data from user.
def display_numbers
    puts "Would you like numbers in your password? y/n"
    dn = gets.chomp.to_s
    check_yn_logicloop(dn)
end
def display_upper
    puts "Would you like UPPERCASE in your password? y/n"
    du = gets.chomp.to_s
    check_yn_logicloop(du)
end
def display_symbol
    puts "Would you like symbols in your password? (!@#$%^&*())? y/n"
    ds = gets.chomp.to_s
    check_yn_logicloop(ds)
end

#require password length
def howlongbrah (length)
    loop do
        puts "that's not a valid number"
        length = gets.chomp.to_f
        break if check_numberlogic(length) == true
    end
    return length.to_i
end
def realnumber (length)
    if check_numberlogic(length) == true
        return length.to_i
    else 
        howlongbrah(length)
    end
end

def pwlength
    puts "how long did you want your password?"
    length = gets.chomp.to_f
    return realnumber(length).to_i
end
