require 'minitest/autorun'
require_relative 'animal'

class TestAnimal < Minitest::Test

  def setup
    puts "set up"
    @animal = Animal.new
    @dog = Dog.new("Mr. Butters")
  end

  def test_animal_is_animal
    assert_instance_of Animal, @animal
  end

  def test_animal_is_animal
    assert_instance_of Dog, @dog
  end

  def test_species
    assert_equal "Dog", @dog.species
  end

  def test_name
    assert_equal "Mr. Butters", @dog.name
  end

  def test_walk
    @dog.legs = 4
    assert_equal 0.8, @dog.walk
  end

  

  def teardown
    puts "tear down"
  end


  # Write test methods for subtract, multiply, and divide
  
end