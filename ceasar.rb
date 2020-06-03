#a hash that holds letters as keys (a..z) and a corresponding number as the values (1..26)
alphabet = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26
}

#ask user for a string
puts "Enter a phrase you would like scrambled:"
initial_phrase = gets.chomp

#ask user for a number and convert to integer
puts "Enter a number to scramble the letters by:"
scramble_num = gets.chomp.to_i
#method to check if number is greater than 26 and replace it with a usable number less than 26
#method to replace letter with a different letter that is 'x' letters away