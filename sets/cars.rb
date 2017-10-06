require 'set'

# utility helper to load inventory
# in lieu of a better way, which i'm sure there is
# 
# iterates through the array and adds each item to the set
# 
# args: array, set
# returns: updates the set
#
def array_items_into_set(array, set)
    array.each {|item| set << item}
end


# Create an empty set named showroom.
showroom = Set.new
puts "showroom: #{showroom}"

# Add four of your favorite car model names to the set.
cars = ['volvo','subaru','mercedes','vw', 'ford', 'nissan', 'BMW']
array_items_into_set(cars, showroom)

puts "showroom now has four cars: #{showroom.inspect}"


# Print the length of your set.
puts "showroom length: #{showroom.length}"


# Add two more car models to your showroom with another set.
new_shipment = Set.new()

new_cars = ['jeep', 'BMW']

array_items_into_set(new_cars, new_shipment)

showroom << new_shipment

puts "merged? #{showroom.inspect}"


# You've sold one of your cars. Remove it from the set.
showroom.delete('vw')
puts "no more VW: #{showroom.inspect}"



# Now create another set of cars in a variable junkyard. 
# Someone who owns a junkyard full of old cars has approached you about buying the entire inventory. 
# In the new set, add some different cars, 
# but also add a few that are the same as in the showroom set.
junkyard = Set.new
junkyard_inventory = ['ford','chevy','jeep','BMW','GMC','nissan']

array_items_into_set(junkyard_inventory, junkyard)
puts "junkyard #{junkyard.inspect}"



# Use the intersection method to see which cars exist in both the showroom and that junkyard.
puts "intersection of junkyard and showroom: #{showroom.intersection(junkyard).inspect}"

# Now you're ready to buy the cars in the junkyard. 
# Use the union method to combine the junkyard into your showroom.
all_cars = showroom.union(junkyard)
puts" union? #{all_cars.inspect}"

# Remove any cars that you acquired from the junkyard that you don't want in your showroom.
 all_cars.delete('ford')
 puts "no more ford: #{all_cars.inspect}"












