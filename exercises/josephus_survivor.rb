=begin
Return who is the "survivor", ie: the last person of a Josephus permutation.

Basically you have to assume that n people are put into a circle and that they are eliminated in steps of k people, like this:


josephus_survivor(7,3) => means 7 people in a circle;
one every 3 is eliminated until one remains
[1,2,3,4,5,6,7] - initial sequence
     ^ 
[1,2,4,5,6,7] => 3 is counted out
[1,2,4,5,7] => 6 is counted out
[1,4,5,7] => 2 is counted out
[1,4,5] => 7 is counted out
[1,4] => 5 is counted out
[4] => 1 counted out, 4 is the last element - the survivor!


Given test cases:

josephusSurvivor(7,3) // 4
josephusSurvivor(11,19) // 10
josephusSurvivor(1,300) // 1
josephusSurvivor(14,2) // 13

=end

=begin
=== PROBLEM ===
input: n people in a circle (int), k steps (int)
output: last survior (int)

explicit requirements:
  1. Count k steps starting next element
  2. After last element, continue count from the start

implicit requirements:
  1. Allow to have a `k` greater than `n`
  2, If `n` is 0 return `nil`
  3. If `k` is 0 return array unchanged

mental model of the problem:
create our circle of n people
  - number the people from 1 through n
  - may want to use array...?
  
loop through our circle of people while performing elimination process

  elimination process looks like:
    - count through k people starting from
      - either outside the circle (so person 1 is the first person we count)
      - from the person to the left of last eliminated
    - 

Create our circle of n people. Loop through our circle of people and eliminate every kth person.
Return last person remaining.

=== EXAMPLES ===
input: 7. 3
output: 4

input: 1, 300
output: 1

input: 14, 2
output: 13

input: 0, 2
output: nil

input: 2, 0
output: [1, 2]

input: 0, 0
output: nil

=== DATA STRUCTURES ===
input: int, int
output: nil, array or int

use array to represent circle of people


=== ALGORITHM ===
0. Guard clause: return nil if `n` is 0
1. Initialize array of people from 1 through `n`
2. Guard clause: 
3. Initialize `index` = k - 1
4. While the length of the array is > 1
   1. Remove array element at `index`
   2. Increment `index` + (k - 1)
   3. `index` = index % array.length
5, Return last element of array

index = 2 (k = 3)
[1,2,3,4,5,6,7]
[1,2,4,5,6,7]
index += 2 --> index = 4
[1,2,4,5,7]
index += 2 --> index = 6 % 5 == 1
[1,4,5,7]
=end

def josephus_survivor(n, k)
  people = [*(1..n)]
  index = k - 1
  while people.length > 1 do
    people.delete_at(index = index % people.length)
    index += (k - 1)
  end
  people.last
end


p josephus_survivor(7,3) # 4
p josephus_survivor(11,19) # 10
p josephus_survivor(1,300) # 1
p josephus_survivor(14,2) # 13