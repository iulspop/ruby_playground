array_methods = "
::[]
::new
::try_convert
#&
#*
#+
#-
#<<
#<=>
#==
#[]
#[]=
#all?
#any?
#append
#assoc
#at
#bsearch
#bsearch_index
#clear
#collect
#collect!
#combination
#compact
#compact!
#concat
#count
#cycle
#deconstruct
#delete
#delete_at
#delete_if
#difference
#dig
#drop
#drop_while
#each
#each_index
#empty?
#eql?
#fetch
#fill
#filter
#filter!
#find_index
#first
#flatten
#flatten!
#hash
#include?
#index
#initialize_copy
#insert
#inspect
#intersection
#join
#keep_if
#last
#length
#map
#map!
#max
#min
#minmax
#none?
#old_to_s
#one?
#pack
#permutation
#pop
#prepend
#product
#push
#rassoc
#reject
#reject!
#repeated_combination
#repeated_permutation
#replace
#reverse
#reverse!
#reverse_each
#rindex
#rotate
#rotate!
#sample
#select
#select!
#shift
#shuffle
#shuffle!
#size
#slice
#slice!
#sort
#sort!
#sort_by!
#sum
#take
#take_while
#to_a
#to_ary
#to_h
#to_s
#transpose
#union
#uniq
#uniq!
#unshift
#values_at
#zip
#|
".split("\n")


string_methods = "
::new
::try_convert
#%
#*
#+
#+@
#-@
#/
#<<
#<=>
#==
#===
#=~
#[]
#[]=
#ascii_only?
#b
#bytes
#bytesize
#byteslice
#capitalize
#capitalize!
#casecmp
#casecmp?
#center
#chars
#chomp
#chomp!
#chop
#chop!
#chr
#clear
#codepoints
#concat
#count
#crypt
#delete
#delete!
#delete_prefix
#delete_prefix!
#delete_suffix
#delete_suffix!
#downcase
#downcase!
#dump
#each_byte
#each_char
#each_codepoint
#each_grapheme_cluster
#each_line
#empty?
#encode
#encode!
#encoding
#end_with?
#eql?
#force_encoding
#freeze
#getbyte
#grapheme_clusters
#gsub
#gsub!
#hash
#hex
#include?
#index
#initialize_copy
#insert
#inspect
#intern
#length
#lines
#ljust
#lstrip
#lstrip!
#match
#match?
#next
#next!
#oct
#ord
#partition
#prepend
#replace
#reverse
#reverse!
#rindex
#rjust
#rpartition
#rstrip
#rstrip!
#scan
#scrub
#scrub!
#setbyte
#size
#slice
#slice!
#split
#squeeze
#squeeze!
#start_with?
#strip
#strip!
#sub
#sub!
#succ
#succ!
#sum
#swapcase
#swapcase!
#to_a
#to_c
#to_f
#to_i
#to_r
#to_s
#to_str
#to_sym
#tr
#tr!
#tr_s
#tr_s!
#undump
#unicode_normalize
#unicode_normalize!
#unicode_normalized?
#unpack
#unpack1
#upcase
#upcase!
#upto
#valid_encoding?
".split("\n")

hash_methods = "
::[]
::new
::ruby2_keywords_hash
::ruby2_keywords_hash?
::try_convert
#<
#<=
#==
#>
#>=
#[]
#[]=
#any?
#assoc
#clear
#compact
#compact!
#compare_by_identity
#compare_by_identity?
#deconstruct_keys
#default
#default=
#default_proc
#default_proc=
#delete
#delete_if
#dig
#each
#each_key
#each_pair
#each_value
#empty?
#eql?
#fetch
#fetch_values
#filter
#filter!
#flatten
#has_key?
#has_value?
#hash
#include?
#initialize_copy
#inspect
#invert
#keep_if
#key
#key?
#keys
#length
#member?
#merge
#merge!
#rassoc
#rehash
#reject
#reject!
#replace
#select
#select!
#shift
#size
#slice
#store
#to_a
#to_h
#to_hash
#to_proc
#to_s
#transform_keys
#transform_keys!
#transform_values
#transform_values!
#update
#value?
#values
#values_at
".split("\n")

integer_methods = "
::sqrt
#%
#&
#*
#**
#+
#-
#-@
#/
#<
#<<
#<=
#<=>
#==
#===
#>
#>=
#>>
#[]
#^
#abs
#allbits?
#anybits?
#bit_length
#ceil
#chr
#coerce
#denominator
#digits
#div
#divmod
#downto
#each
#even?
#fdiv
#floor
#gcd
#gcdlcm
#inspect
#integer?
#lcm
#magnitude
#modulo
#next
#nobits?
#numerator
#odd?
#ord
#pow
#pred
#rationalize
#remainder
#round
#size
#succ
#times
#to_f
#to_i
#to_int
#to_r
#to_s
#truncate
#upto
#|
#~
".split("\n")

enumerable_methods = "
#all?
#any?
#chain
#chunk
#chunk_while
#collect
#collect_concat
#count
#cycle
#detect
#drop
#drop_while
#each_cons
#each_entry
#each_slice
#each_with_index
#each_with_object
#entries
#filter
#filter_map
#find
#find_all
#find_index
#first
#flat_map
#grep
#grep_v
#group_by
#include?
#inject
#lazy
#map
#max
#max_by
#member?
#min
#min_by
#minmax
#minmax_by
#none?
#one?
#partition
#reduce
#reject
#reverse_each
#select
#slice_after
#slice_before
#slice_when
#sort
#sort_by
#sum
#take
#take_while
#tally
#to_a
#to_h
#uniq
#zip
".split("\n")

comparable_methods = "
#<
#<=
#==
#>
#>=
#between?
#clamp
".split("\n")



methods_groups = [array_methods, string_methods, hash_methods, integer_methods, enumerable_methods, comparable_methods]

p sum = methods_groups.reduce(0) { |sum, method_group| sum + method_group.length}

p sum / 15