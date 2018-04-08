# pound_puppy
A beginner TDD class and method exercise for students

If it's your first time testing, look through the comments in `test/fake_dog_test_with_instructions.rb`

* This file briefly explains what a test looks like and what each part is doing. There's obviously more to know, but this might take a little mystery out of your first glimpse of a test file.

Next, open `test/dog_test.rb`. Read through it and then run it.
* When you run this file for the first time, you are going to get an error. This is expected!
* Until your program is complete, your test is going to give you "errors" and "failures"
* Each error or failure will tell you what to do next.
* For instance, look at this error:

`/Users/yourname/.rvm/rubies/ruby-2.3.1/lib/ruby/site_ruby/2.3.0/rubygems/core_ext/kernel_require.rb:120:in 'require': cannot load such file -- ./lib/dog (LoadError)`

* It might look nonsensical at first, but if you look closer, it says that is has a problem with 'require' -- it can't load a file called `./lib/dog`. OK cool. We told it to load this file and it can't. Why not? Well, if you look inside that lib folder, you will notice that there is no file called `dog.rb`. That's why you're getting an error.

* Once you think you understand the error, the next step is to try to appease it. In this case, make a file called `dog.rb` in the `/lib` folder. Then, run the test again and see if you get a shiny new error (which is a good thing! New errors are amaaaaazing)

* Keep solving errors and failures one at a time until you get a 'green run.' When that happens, your program is either finished or you're ready to write more tests! It is not always easy, but it _is_ that simple.


