cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}

# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]
p cities_lived_in.values.flatten.uniq

# all_cities = []
# cities_lived_in.flat_map do |cities|
#     cities.last.map do |city|
#         all_cities << city
#     end
# end

# p all_cities.uniq

## or this could work:

# all_cities = []
# cities_lived_in.transform_values do |cities|
#     cities.each do |city|
#         all_cities << city
#     end
# end
# p all_cities

# alternative method:
# cities = []
# cities_lived_in.each_value do |city_arr|
#     city_arr.each do |city|
#         cities << city
#     end
# end

# p cities.uniq 


# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]
# if cities_lived_in.values.include?("Philadelphia")
#     p cities_lived_in.keys
# end

cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}

# humans = []
# cities_lived_in.map do |hash_pair|
#     if hash_pair.last.include?("Philadelphia")
#         humans << hash_pair.first
#     end
# end

# p humans

humans_in_PA = []
cities_lived_in.each do |person, cities|
    if cities.include?("Philadelphia")
        humans_in_PA << person
    end
end

p humans_in_PA

# cities_lived_in = {
#     michaela: ["Philadelphia", "Fort Collins", "Seattle"],
#     mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
#     pamela: ["Lansing"],
#     alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
# }

# # Problem #3: 
# # Create a hash that has the city as a key, and the number of people that live in it as it's value: 
city_pop = Hash.new(0)

cities_lived_in.each do |person, cities|
    cities.each do |city|
        city_pop[city] += 1
    end
end
p city_pop


# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }
