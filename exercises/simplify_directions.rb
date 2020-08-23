=begin
["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
["WEST"]

input: array
output: array

directions annihilate only if immediete next to each other
NORTHSOUTH
SOUTHNORTH
EASTWEST
WESTEAST

if array is empty, return empty array
if directions anihilate, return empty array

turn array into string without commas or spaces
match annihilating strings and replace with empty strings
repeat until no more matches
turn string into array

1. join array into string without seperation
2. times half the length of array, match with patterns and replace with empty string
3. split based on matching NORTH SOUTH EAST WEST
4. return array
=end

def simplify_directions(directions)
	directions_string = directions.join
	(directions.length / 2).times { directions_string.gsub!(/(NORTHSOUTH)|(EASTWEST)|(SOUTHNORTH)|(WESTEAST)/, "") }
	directions_string.split(/(NORTH)|(SOUTH)|(EAST)|(WEST)/).delete_if {|string| string == "" }
end

p simplify_directions(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])