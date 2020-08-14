a = "Xyzzy"

def my_value(b)
  puts b.object_id
  b = 'yzzyX'
  puts b.object_id
  b += "adsf"
end

puts a.object_id
my_value(a)
puts a
