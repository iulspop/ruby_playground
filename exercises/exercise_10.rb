=begin

Trolls are attacking your comment section!
A common way to deal with this situation is to remove all of
the vowels from the trolls' comments, neutralizing the threat.
Your task is to write a function that takes a string and 
return a new string with all vowels removed.
For example, the string "This website is for losers LOL!" 
would become "Ths wbst s fr lsrs LL!".

Note: for this kata y isn't considered a vowel.

PROBLEM
input: string
output: new string with all vowels removed

vowels: a, e, i, o, u
vowels: A, E, I, O, U

new string
case remains the same

mental model: replace all matching vowels with empty string

EXAMPLES
Input: "This website is for losers LOL!"
Output:  "Ths wbst s fr lsrs LL!"

DATA STRUCTURE:
simply string

ALOGRITHM:
regex match a, e, i, o, u, case insensitive
replace all matches with empty string
return new string

=end

def remove_vowels(str)
    str.gsub /[aeiou]/i, ""
end

p remove_vowels("This website is for losers LOL!")