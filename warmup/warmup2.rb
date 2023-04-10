# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
unnested_animals = nested_animals.flat_map do |animals|
  animals.map do |animal|
    animal.to_s
  end
end
# p unnested_animals

# or this as an alternative!!
nests = []
nested_animals.each do |nest|
  nest.each do |animal|
    nests << animal.to_s
  end
end

# p nests


# 2. Return an unnested array of animals with length >= 4
large_animals = nested_animals.flat_map do |nest|
  nest.find_all {|animal| animal.to_s.length >= 4}
end

p large_animals

large_animals = []
nested_animals.each do |nest|
  nest.each do |animal| 
    require 'pry'; binding.pry
    large_animals << animal.length >= 4
  end
end

p large_animals


# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
