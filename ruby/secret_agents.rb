
# encrypt
# example : "abc" --> "bcd"
# accept input password
# set index = 0
# advance each letter in a loop
# advance index +1 after each loop
# end loop when index = input length
# output advanced password

def encrypt(password)
  i = 0
  output = ""
  until i == password.length
    if password[i] == "z"
      output += "a"
      i += 1
    else
      output += password[i].next
      i += 1
    end
  end
  output
end


# decrypt
# example : "bcd" --> "abc"
# accept input password
# set index = 0
# change each letter in a loop
# advance index +1 after each loop
# end loop when index = input length
# output decrypted password

def decrypt(password)
  i = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  output = ""
  until i == password.length
    output += alphabet[alphabet.index(password[i])-1]
    i += 1
  end
  output
end


puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

#the nested method below returns your entered password by changing the password then undoing that change
puts decrypt(encrypt("swordfish"))

#Ask user if they want to decrypt or encrypt
#Ask for password
#if encrypt, use password as input for encrypt
#if decrypt, use password as input for decrypt
encrypt_or_decrypt = nil
until encrypt_or_decrypt == "encrypt" || encrypt_or_decrypt == "decrypt"
puts "Do you want to encrypt or decrypt the password?"
encrypt_or_decrypt = gets.chomp
  if encrypt_or_decrypt == "encrypt"
    puts "What is the password?"
    password = gets.chomp
    puts encrypt(password)
  elsif encrypt_or_decrypt == "decrypt"
    puts "What is the password?"
    password = gets.chomp
    puts decrypt(password)
  else
    puts "I didn't understand that"
  end
end