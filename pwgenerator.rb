load 'display.rb'
# comments
#pw parameters
def default
    lowercase = ('a'...'z').to_a
end
def numbers(x)
    if x == true
        return numbers = (0...9).to_a
    else
        return []
    end
end
def uppercase(x)
    if x == true
        return uppercase = ('A'...'Z').to_a
    else
        return []
    end
end

def symbols(x)
    if x == true
        return symbols = ['!','@','#','$','%','^','&','*','(',')',',','|']
    else
        return []
    end
end

def total_array_range(numbers,uppercase,symbols)
    return default + numbers + uppercase + symbols
end

#pw generator logic
def generator(array,number)
    count = 0
    newpassword = Array.new(number.to_i)
    while count < number.to_i do
        y = array.sample
        newpassword[count] = y
        count += 1
    end
    puts "please copy this password >>    " + newpassword.join
end

#Action
loop do 
    generator(total_array_range(numbers(display_numbers),uppercase(display_upper),symbols(display_symbol)),pwlength)
    puts "do you want to generate another password? (y/n)"
    y = gets.chomp.to_s
    break if y == "n"
end



