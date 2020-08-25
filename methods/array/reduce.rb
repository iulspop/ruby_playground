numbers = [0, 1, 2, 3, 4, 5]

sum = numbers.reduce(:+)

numbers = [123, 1233, 4355, 656]

p numbers.map { |num| num / 2}.reduce(:+)