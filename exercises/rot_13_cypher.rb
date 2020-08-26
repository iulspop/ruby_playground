# ROT13 is a simple letter substitution cipher that replaces a letter with
# the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered with Rot13.
#  If there are numbers or special characters included in the string, 
#  they should be returned as they are. 
#  Only letters from the latin/english alphabet should be shifted, 
#  like in the original Rot13 "implementation".

=begin
	PROBLEM
	input: string
	output: string ciphered with ROT13

	description of the problem: for each letter of the english alphabet,
	replace it with the letter 13 letters after it in the alphabet.

	explicit requirements:
	1. Numbers or special characters are returned as they are.
	2. Only letters from the english alphabet should be shifted.

	implicit requirement:
	1. When counting the 13th letter after, 
     if reach the end of the alphabet, wrap around and count from the start
  2. Letters keep same letter case
  3. if input = empty string, return empty string
  4. space and new line charachters remain the same.

  model:
  turning the string into an array, map over each character with 13th letter after,
  join array into string, return new string

	EXAMPLES
	input: "test"
	output: "grfg"
	a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z

	input: "Test"
  output: "Grfg"

  DATA STRUCTURES
  input: string
	output: string ciphered with ROT13
  
  array to map

  ALGORITHM
  1. convert string into array of chars
  2. map over chars
     1. if not english letter, then return as is.
     2. change the char with the letter 13 positions after in the alphabet
  3. join the array into a string and return it.
=end

def rot13(string)
  chars = string.chars
  encrypted = chars.map do |char|
    if !char.match?(/[a-z]/i) then char
    elsif char.match?(/[A-Z]/) then shift_letter(char).upcase
    else
      shift_letter(char)
    end
  end
  encrypted.join
end

def shift_letter(char)
  char.downcase!
  alphabet = [*("a".."z")]
  index = alphabet.index(char)
  13.times do
    index += 1
    index = 0 if index == alphabet.length
  end
  alphabet[index]
end
