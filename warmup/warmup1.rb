# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.

new_string_arr = animals.map {|animal| animal.to_s}
p new_string_arr


# 2. Return an array of animals with a length >= 4.
  # wouldn't want to use map here because this will return an array of booleans of the same number
  # of elements of original array and just replaces the block with the statement we're asking it to 
  
# great_size_animals = animals.map {|animal| animal.length >= 4}
# p great_size_animals
#=> [false, false, true, true, true, true]

great_size_animals = animals.select {|animal| animal.length >= 4}
p great_size_animals

