# implement a caesar cipher that takes in a string and the shift factor
# then outputs the modified string:

def caeser_cipher(string, shift_factor)
    # Create array with alphabets for index
    alphabets = ('a'..'z').to_a
    # force string to lower case and to split into array
    lower_string = string.downcase.split('')
    # Variable to store encrypted string
    encrypted_string = ''
    # Finds the index of the letters in string and moves accordingly to shift_factor
    lower_string.each do |character|
        if alphabets.include?(character)
            letter_index = alphabets.find_index(character) + shift_factor
            # cycles back through alphabet if sum of letter_index and shift_factor is greater than 25
            if letter_index >= alphabets.length
                letter_index -= alphabets.length
            end
            # Adds the characters at the letter_index after shift_factor
            encrypted_string += alphabets[letter_index]
        else
            # Adds spaces and symbols to the encrypted string as is
            encrypted_string += character
        end
    end
    # Returns the string!
    encrypted_string
end

# Prompt for message to encrypt
puts "What message do you want to encrypt? "
message = gets.chomp
# Prompt how to encrypt
puts "How many character movements? "
encrypt_method = gets.chomp.to_i # changes to integer

# passing message and encrypt_method into function
puts caeser_cipher(message, encrypt_method)

# 'hello there!' returned 'mjqqt ymjwj!'
# 'what a string' returned 'bmfy f xywnsl'



# ~~~ ways to improve ~~~
# check to make sure encrypt_method is a whole number integer
# add encryption for numbers
# encrypting multiple messages using classes
