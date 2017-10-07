require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test

  def setup
    puts "set up"
    @calc = Calculator.new
  end

  def test_success
    assert_equal 4, @calc.add(2,2)
  end

  def test_failure
    assert_equal 3, @calc.add(2,2), "Adding doesn't work"
  end

  def teardown
    puts "tear down"
  end


  # Write test methods for subtract, multiply, and divide

end