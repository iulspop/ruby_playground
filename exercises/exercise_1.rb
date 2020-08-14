a = 7
puts a.object_id

def my_value(b)
  puts b.object_id
  b += 10
  puts b.object_id
end

my_value(a)