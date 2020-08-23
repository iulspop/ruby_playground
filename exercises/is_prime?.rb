=begin
Define a function that takes an integer argument and returns logical value true or
false depending on if the integer is a prime.

Per Wikipedia, a prime number (or a prime) is a natural number greater than 1
that has no positive divisors other than 1 and itself.

Requirements
You can assume you will be given an integer input.
You can not assume that the integer will be only positive. 
You may be given negative numbers as well (or 0).
NOTE on performance: There are no fancy optimizations required, 
but still the most trivial solutions might time out. 
Numbers go up to 2^31 (or similar, depends on language version). 
Looping all the way up to n, or n/2, will be too slow.

The algorithm can be improved further by observing that all primes greater than 3 are of the form 6k ± 1.
This is because all integers can be expressed as (6k + i) 
for some integer k and 
for i = −1, 0, 1, 2, 3, or 4; 2 divides (6k + 0), (6k + 2), 
(6k + 4); and 3 divides (6k + 3). 
So, a more efficient method is to test if n is divisible by 2 or 3, 
then to check through all the numbers of the form 
6 k   ±   1 ≤ sqrt(n)
This is 3 times as fast as testing all m. 

A prime number is an natural number greater than 1 divisible without remainder only by itself or 1
if you divided it by all natural natural numbers smaller than itself and all return a remainder, it is prime

If negative or 0, return false
Only integers

MENTAL MODEL

function
	primes = [2, 3]

	inside closure
		if negative or 0 return false
		loop through primes, 
			if n is equal to prime return true, 
			else, if number % prime == 0 return false
		end


	end

end

function is_prime(n)
    if n ≤ 3 then
        return n > 1
    else if n mod 2 = 0 or n mod 3 = 0
        return false

    let i ← 5

    while i × i ≤ n do
        if n mod i = 0 or n mod (i + 2) = 0
            return false
        i ← i + 6

    return true
=end

def is_prime(n)
	if n <= 3
		return n > 1
	elsif n % 2 == 0 || n % 3 == 0
		return false
	end

	i = 5
	while i * i <= n do
		return false if n % i == 0 || n % (i + 2) == 0
		i = i + 6
	end

	true
end