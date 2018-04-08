
# ***********************      HEY YOU      ***********************
# THIS FILE JUST EXISTS TO GIVE YOU A QUICK AND DIRTY EXPLANATION OF THE ANATOMY OF A TEST
# IF YOU'RE READY TO TRY OUT THE TEST FOR REALS, HEAD OVER TO dog_test.rb

gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

# Look at lines 6-9.
# Line 6 is ensuring that you have the minitest gem installed.
# Lines 7 and 8 are specifically declaring that you want to use these minitest libraries in this file.
# Line 9 is declaring that you're going to have access to what's written in a file called 'dog.rb' from inside this file.
# You are going to require other ruby files A LOT moving forward. Ruby files can be friends!

class DogTest < Minitest::Test  # <-- You would say this outloud as "class DogTest, inherits from minitest test"
                                # Don't worry about inheriting for now, just know that this gives our tests some
                                # special shit we don't usually have in ruby and we don't have to write it or know
                                # how it works, we just get to use it. Yay! Thanks, Minitest!
                                # DogTest is a special name:
                                # Since we're using the minitest gem, it's going to look for a class name that ends with Test.
                                # Not TestDog or DogTesting or Dogtest. It wants DogTest and it's not going to understand you
                                # if you write this differently. If you write DogTest here, it's going to look for the class Dog
                                # (or whatever comes before 'Test') either in this file or in some other file that we have access to.

  def test_it_exists #<-- This is also a special name. Minitest tests HAVE to start with test_ or the test just sits there like an asshole not doing anything
    dog = Dog.new("Lulu") #<-- Here we are just creating a new dog. This part of a test varies a lot. You're just setting up whatever you want to be able to test.
    assert_instance_of(Dog, dog)  #<-- This is the real power of a test: assertions. Here we are asserting that our new dog is an instance of the class Dog.
                                  # If you don't have a ruby file that defines a class called Dog, this will fail (and tell you why)
                                  # There's lots of different sorts of assertions. You'll see some other examples soon.
  end

  # To run the real test, in your command line, type:
  # ruby test/dog_test.rb
  # Then, read the errors and do ONLY what you need to do to fix that one little error.
  # For instance, if it says that your file doesn't exist, go ahead and make the file, but don't type anything in it yet.
  # Just make the file and run the test again to see what the next error is.

  # One more important thing to know about setting up a test. Your file name is special too. It should start with the class name
  # you're testing and end with `_test.rb`, ie. `dog_test.rb`. Technically it will work if you don't do this, but it's a jerk move because it makes
  # it hard for other people to work in your code and know where things are and what they do.
end