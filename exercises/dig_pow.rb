# luliu => 

# Some numbers have funny properties. For example:
#
# 89 --> 8¹ + 9² = 89 * 1
#
# 695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2
#
# 46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51
#
# Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p
#
# we want to find a positive integer k, if it exists, such as the sum of the digits of n taken to the successive powers of p is equal to k * n.
# In other words:
#
# Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k
#
# If it is the case we will return k, if not return -1.
#
# Note: n and p will always be given as strictly positive integers.


=begin
PROBLEM
input: n (positive int), p (positive int)
output: k (int)

explicit requirements:
 1. all positive integers
 2. if k is not an integer, then return -1

model:
n => a,b,c,d...
find k such that
k = a^p + b^(p+1) + c^(p+2)/n

EXAMPLES

p dig_pow(89, 1) == 1 # since 8¹ + 9² = 89 = 89 * 1
p dig_pow(92, 1) == -1 # since there is no k such as 9¹ + 2² equals 92 * k
p dig_pow(695, 2) == 2 # since 6² + 9³ + 5⁴= 1390 = 695 * 2
p dig_pow(46288, 3) == 51 # since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

#note to self: extract the meaning of the test case
# walk through examples and if find requiremetns, make them clear
input: 92, 1
ouput: -1

implicit:
explicit:


DATA STRUCTURE:
input: n (positive int), p (positive int)
output: k (int)

use array to manipulate digits


ALGORITHM:
1. use sub method 'ddd' to trasnform integer n into array of digit integers
2. create sum = 0
3. Loop through each digit
    1. sum += digit to the power of p
    2. increment p + 1
4. if sum % n != 0 then return -1
5. return sum / n

sub method 'ddd':
1.
2.
3.


=end

#IMPLEMENT ALGORITHM

def dig_pow(n, p)
  digits = n.digits.reverse
  sum = 0
  digits.each do |digit|
    sum += (digit ** p)
    p += 1
  end
  return -1 if sum % n != 0
  return sum / n
end

p dig_pow(89, 1) == 1 # since 8¹ + 9² = 89 = 89 * 1
p dig_pow(92, 1) == -1 # since there is no k such as 9¹ + 2² equals 92 * k
p dig_pow(695, 2) == 2 # since 6² + 9³ + 5⁴= 1390 = 695 * 2
p dig_pow(46288, 3) == 51 # since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51