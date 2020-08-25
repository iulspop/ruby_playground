def longest_consec(strings, k)
	return "" if strings.size == 0 || k > strings.size || k <= 0

	longest = ""
	strings.each_index do |i|
		string = strings.slice(i, k).join
		if string.length > longest.length then longest = string end
	end
	longest
end

p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 4)