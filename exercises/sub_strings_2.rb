=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.
For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.
solve("1341") = 7. See test cases for more examples.

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

===== PROBLEM =====
input: string of integers (string)
output: count of odd-numbered substrings (int)

string of integers: is a string with only number characters "1234"
substring: whole sequence of characters within string
odd-numbered: when substring is converted to an integer, that integer is odd

implicit requirements:
	1. Only string of integers is a possible input
	2. Count includes duplicate substrings
	3. If empty string input, return 0

mental model of what the problem requires:
Get and save each possible substring.
Convert the substrings to integers, and count how many are odd.
Return count.


===== EXAMPLES =====
input: ""
output: 0

input: "13471"
output: 12

13471, 1347, 3471

===== DATA STUCTURES =====
input: string
output: integer

substrings go to array

===== ALOGRITHM =====
1. initialize local variable `length` equal to length of string
2. initialize local variable `substrings` as empty array
3. loop while length >= 1
   1. initialize local variable `index` equal to 0 (int)
   2. loop
      1. from string, slice a substring of length = length, starting from index
      2. push it substrings array
      3. increment index + 1
      4. break if (length of string - length - index < 0)
   3. decrement length - 1
4. convert all substrings to integers
5. filter array to only odd numbers
6. return array count
=end

# ===== IMPLEMENTATION ====

def solve(string)
  length = string.length
  substrings = []
  while length >= 1
    index = 0
    loop do
      substring = string.slice(index, length)
      substrings.push(substring)
      index += 1
      break if (string.length - length - index < 0)
    end
    length -= 1
  end
  substrings.map(&:to_i).filter { |num| num.odd? }.count
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28