=begin
Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation
=end

=begin
input: string sentence
output: scrabled string sentence

words seperated only by spaces
first and last alphabetical char of word remain in place
special charachters remain in place
no caps input??

algo:
Algo not valid anymore after refactoring!

given a string `sentence`
1. split `sentence` into array of strings `words`
2. split `words` into `split_words`
   - array with word split into three parts, two extremities and 
     center part without first and last alphabetical char and punctuation
3. initialize variable `scrambled_words` = map each `split_word` in `split_words`
   1. initialize variable `center_chars` = center of word, split into chars
   2. initialize variable `special_chars` and assign it to empty hash
   3. iterate through each `char` in `center_chars` with index
      1. if `char` match special chars, add to `special_chars` with index as key
   4. initialize variable `deleted` = 0
   5. iterate through each `index` in `special_chars`
      1. delete element in `center_chars` at `index` - `deleted`
      2. increment `deleted` + 1
   6. sort `center_chars`
   7. iterate through each `index` and `special_char` in `special_chars`
      1. insert `special_char` into center_chars befpre `index`
   8. assign center element of `split_word` to joined `center_chars`
   9. join `split_word`
4. join `scramble_words`

Algo not valid anymore after refactoring!
=end

def split_extremities(words)
  split_extremities = /(\A[-',.]*[a-z]{1})|([a-z]{1}[-',.]*\z)/
  words.map { |word| word.split(split_extremities) }
end

def letter?(char)
  char.match? /[a-z]/
end

def sort_letters(chars)
  sorted_letters = chars.select { |char| letter?(char) }.sort
  chars.map {|char| letter?(char) ? sorted_letters.shift : char }.join
end

def scramble_words(sentence)
  words = sentence.split
  split_words = split_extremities(words)

  scrambled_words = split_words.map do |(_, first, center, last)|
    next first if center.nil?
    next first + center if last.nil?
    center = sort_letters(center.chars)
    first + center + last
  end

  scrambled_words.join(" ")
end

p scramble_words("four, optimistic. creative, is unambiguous four ninety-nine, you're lock-in. advantageous subsequently atonement")
p scramble_words("it's zig-zag bliss. welcome a")
p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."