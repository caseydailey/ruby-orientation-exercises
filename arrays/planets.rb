planet_list = ["Mercury", "Mars"]


# Use `append()` to add Jupiter and Saturn at the end of the array.
planet_list.push("Jupiter", "Saturn")
puts "did we append? #{planet_list}"

# Use the `concat()` method to add another array of the last two planets in our solar system to the end of the array.
last_two = ["Uranus", "Neptune"]
planet_list.concat(last_two)
puts "last two concat: #{planet_list}"

# Use `insert()` to add Earth, and Venus in the correct order.
planet_list.insert(1, "Venus", "Earth")
puts "inserting Venus and Earth #{planet_list}"

# Use `<<`  ("shovel" operator) to add Pluto to the end of the array.
planet_list << "Pluto"
puts "Well hello there, Pluto: #{planet_list}"

# Now that all the planets are in the array, 
# slice the array in order to get the rocky planets into a new list called `rocky_planets`.
rocky_planets = planet_list.slice(0,3)
puts "rocky planets: #{rocky_planets}"
 
# Being good amateur astronomers, we know that Pluto is now a dwarf planet, 
# so use the `pop` operation to remove it from the end of `planet_list`.
planet_list.pop
puts "no more Pluto :(  #{planet_list}"


# Create another array containing arrays where 
# each array will hold the name of a spacecraft that we have launched, 
# and the names of the planet(s) that it has visited, or landed on. (e.g. ['Cassini', 'Saturn']).
missions = [

    ['my_spaceship', 'Mars', 'Venus', 'Saturn'],
    ['jisies_spaceship', 'Saturn', 'Jupiter'],
    ['hannahs_spaceship', 'Mars', 'Jupiter', 'Uranus', 'Mercury'],
    ['major_toms_spaceship', 'Mercury', 'Venus', 'Earth', 'Mars']

]


# Iterate over your array of planets, 
# and inside that loop, iterate over the array of arrays. 
# Print, for each planet, which satellites have visited.
planet_list.each do |planet|
    missions.each do |mission|
        mission.each do |detail|
            if detail == planet
                puts "#{mission[0]} has visited #{planet}"
            end
        end
    end
end
