require 'minitest/autorun'
require_relative 'car_main'

class TestCalculator < Minitest::Test

  def setup
    puts "set up"
    @carlot = CarLot.new
  end

  def test_read_makes
    @carlot.read_makes
    assert_kind_of Array, @carlot.makes
    refute_nil @carlot.makes.first    
  end

  def test_read_models
    @carlot.read_models
    assert_kind_of Array, @carlot.models
    refute_nil @carlot.models.first
  end

  def test_makes_and_models_in_hash
    @carlot.build_hash
    assert_kind_of Hash, @carlot.makes_and_models
    refute_nil @carlot.makes_and_models
  end

  def teardown
    puts "tear down"
  end

end