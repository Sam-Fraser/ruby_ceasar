#ask user for a string
puts "Enter a phrase you would like scrambled:"
initial_phrase = gets.chomp

#ask user for a number and convert to integer
puts "Enter a number to scramble the letters by:"
scramble_num = gets.chomp.to_i

#method to check if number is greater than 25 and replace it with a number that corresponds to an index in alphabet array
def get_new_num(n)
  if n > 25
    n = n-26*(n/26)
  else
    n = n
  end
end

#method to replace letter with a different letter that is 'x' letters away
  #this will split the inital_phrase into an array and change each letter in the array according to the scramble_num before joining it back together
def ceasar_cipher(str, num)
  #an array of all letters
  alphabet = ("a".."z").to_a

  #initialize final_phrase variable
  final_phrase = ""

  arr = str.split('')
  new_arr = arr.each do |letter|
    case letter
    when "a".."z"
      displaced_num = num + alphabet.index(letter)
      final_phrase += alphabet[get_new_num(displaced_num)]
    when "A".."Z"
      displaced_num = num + alphabet.index(letter.downcase)
      final_phrase += alphabet[get_new_num(displaced_num)].upcase
    else
      final_phrase += letter
    end
  end
  puts "Your scrambled text:"
  print "#{final_phrase}\n"
end

ceasar_cipher(initial_phrase, scramble_num)

