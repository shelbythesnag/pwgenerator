#pw generator logic
def generator(allowable_characters,pw_length)
    count = 0
    newpassword = Array.new(pw_length.to_i)
    while count < pw_length.to_i do
        y = allowable_characters.sample
        newpassword[count] = y
        count += 1
    end
    puts "please copy this password >>    " + newpassword.join
end



