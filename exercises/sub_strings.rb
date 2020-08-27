=begin
1:11
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.


Problem: Given a string of integers, return the number of odd numbered substrings that can be formed.

For example, in the case of '1341' they are 1, 1, 3, 13, 41 ,341, 1341, a total of 7 numbers


input: string
output: integer

MM
return all posible substrings
then turn those into integers
if the integers are odd, then store them in an array
then display the size of the array

Algorithms & Data Structures:
Create Substring Method
initialize varialbe called subs that is an empty array that will hold all substrings
initialize variable called overall counter and assign that to the integer zero
initialize variable called counter and assign it the integer zero

create nested loop
reference the begging of the string by referecning overall counter from that range to counter variable put that range in the subs array
increment counter by one
do this until counter is equal to the size of the string
increment overallcounter by one
reassign counter to equal to overallcounter
do this whole loop until overall counter is the size of the string
display subs array

create solve method that takes a string as an argument
turn all the substrings into an integer
find the substrings that are odd numbers
find the size of that array
=end

def substrings(string)
  subs = []
  overall_counter = 0
  counter = 0
  
  loop do
    loop do
      subs << string[overall_counter..counter]
      counter += 1
      break if counter == string.size
    end
    overall_counter += 1
    counter = overall_counter
    break if overall_counter == string.size
  end
  subs
end

def solve(string)
  p substrings(string).select{|substr| substr.to_i.odd?}.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28