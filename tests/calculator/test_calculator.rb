require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test

  def setup
    puts "set up"
    @calc = Calculator.new
  end

  def test_add
    assert_equal 4, @calc.add(2,2)
  end

  def test_subtract
    assert_equal 0, @calc.subtract(2,2)
  end

  def test_multiply
    assert_equal 16, @calc.multiply(4,4)
  end

  def test_divide
    assert_equal 4, @calc.divide(8,2)
  end

  def teardown
    puts "tear down"
  end


  # Write test methods for subtract, multiply, and divide

end