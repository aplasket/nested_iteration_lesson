# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.

new_string_arr = animals.map {|animal| animal.to_s}
p new_string_arr


# 2. Return an array of animals with a length >= 4.



