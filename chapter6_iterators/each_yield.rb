class Array

  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end

end

#[1,2,3].my_each{|i| puts "#{i}"}

#---------------------------------------------------------------
#Using my_each to create my_times

#CRITICAL - forget the custom my_each method defined above, below is how you would write an each method using the default 'each' method
# even if you hadn't created a custom each method -> {|i|.. and then using i each time as step through what you are stepping through
###### Don't be confused that you have also created a custom each

#Critical: yield runs once for each item in the array, because this is how the each method works!
#e.g. If the array is [2,3,4], each runs 3 times as always

#In this case as we are trying to replicate 'times', we yield to the code block each time simply subbing in the current number
# from the array as the 'each' iterates through
# Because we have set up the array to go up in steps of one [1..n], it corresponds to the same as stepping up number values
# using the default times method 0,1,2,3...

#Critical learning: 'yield' is where the code block is called i.e. it yields to the code block at that point.
# => i.e.  'yield' is where code block is replaced exactly. As if you subbed in exactly
#whatever code block is being provided to the iterator method.

#In the below case,  give 'i' as an input to yield so that it has a flexible value to give the code block it yields to
#If did not include the i, would only be able to feed in the same code/print the same result each time, which would work in some cases
#e.g. if you wanted to print 'yeah' 10 times, wouldn't have to put the i in, and when you called the method the
# code you would feed in would be {puts "yeah"}. But in this case, you wouldn't use an each as it doesn't serve each's purpose
# as could use e.g. a loop instead
# leaving i means it is true to the functionality of the original times as it can flexibly work its way up numbers
# in this case, it piggy backs of the above defined each method to do so

class Integer
  def my_times
    Array(0..self).my_each{|i| yield i}
  end
end

#Array is the object that is sent the method message, the code block is fed in from when you write out the times method e.g. below
#(code block is like how an argument is fed in, but a different construct)
#5.my_times{|i| puts "#{i}"}
