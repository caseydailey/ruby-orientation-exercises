
# Using the Random class, generate a list of 20 random numbers between 0 and 49.
random_numbers = Array.new(20) { rand(0...49) }
p random_numbers

# With the resulting array, build a new array that contains each number squared
random_squared = random_numbers.map { |num| num ** 2}
p random_squared