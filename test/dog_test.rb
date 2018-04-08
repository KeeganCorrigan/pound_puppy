gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

class DogTest < Minitest::Test

  def test_it_exists
    dog = Dog.new("Lulu")
    assert_instance_of(Dog, dog)
  end
end