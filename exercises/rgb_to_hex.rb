=begin
The rgb function is incomplete.
Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. 
Valid decimal values for RGB are 0 - 255. 
Any values that fall out of that range must be rounded to the closest valid value.

Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

The following are examples of expected output values:

rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3
=end

=begin
PROBLEM
input: int, int, int
output: string representation of hex number

Requirements:
  1. Input values outside of 0-255 range must be rounded to closest valid value
  2. Output always 6 chars long. No shorthand representation

Implicit Requirements:
  1. Always receive three integers

Mental Model:
Round inputs to closest valid value (0-255). Convert each input integer to hex number equivalent.
Convert the hex numbers into strings and concatenate together. Return the string.

EXAMPLES:
input: 255, 255, 255
output: "FFFFFF"

input: -323234552, 3453456346, 7878
output: "00FFFF"

DATA STRUCTURES:
input: int, int, int
output: string

all inputs into >> array

ALGORITHM:
  1. Gather all inputs into array
  2. Clamp integers into range
  3. Convert to Hex
  4. Convert to String
  5. Convert characters to upcase
  6. Concatenate together and return
=end

# IMPLMENTATION

def rgb(*decimal_values)
  hex_values = decimal_values.map { |decimal| decimal.clamp(0, 255).to_s(16).upcase }
  hex_values.map! { |hex| if hex.length == 1 then "0" + hex else hex end }
  hex_values.join
end


p rgb(255, 255, 255) # returns FFFFFF
p rgb(255, 255, 300) # returns FFFFFF
p rgb(0,0,0) # returns 000000
p rgb(148, 0, 211) # returns 9400D3