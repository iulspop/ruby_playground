=begin
Given: an array containing hashes of names

Return: a string formatted as a list of names separated by 
commas except for the last two names, which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''

Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.
=end

=begin
input: array of hashes
output: string formated list

name seperated by ", "
last two names seperated by " & "
empty array return []

loop through array, get name, build up string

1. check if array empty, return empty string
2. create empty string
3. loop through array
4. each loop add name to string, follow by ", "
5. before last loop add name, followed by " & "
6. last loop add only name
7. end loop
8. return string
=end

def list(names)
	list_of_names = ""
	names.each_index do |i|
		if i == (names.length - 1) then list_of_names += names[i][:name]
		elsif i == (names.length - 2) then list_of_names += names[i][:name] + " & "
		else list_of_names += names[i][:name] + ", " end
	end
end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])