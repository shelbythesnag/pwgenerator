load 'display.rb'
load 'passwordlength.rb'
load 'includeparameter.rb'

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

#App Logic
loop do 
    generator(newpw,pwlength)
    puts "do you want to generate another password? (y/n)"
    y = gets.chomp.to_s
    break if y == "n"
end