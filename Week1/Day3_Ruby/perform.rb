
def define_password(password_1 = gets.chomp)
    @password1 = password_1.to_s
end

def password_verification (password_2 =gets.chomp)
    @password2 = password_2.to_s
end 

def connect
    while @password_1 != @password_2
         "Try again!"
         password_verification
         if @password_1 == @password_2
            puts "You are connected !"
        end
    end
end

puts "Enter the password."
print ">"
define_password

puts "Please enter again."
print ">"
password_verification

connect