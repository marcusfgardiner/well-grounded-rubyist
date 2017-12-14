#times is an instance method of the integer class -> applies to instances of the class i.e. a number
class Integer
  def my_times
    c = 0
    #i.e. until c = the number this method was called upon - because within the scope of a method definition,
    #self is the object that the message is sent to, in this case an instance of the Integer class i.e. a number
    until c == self
      yield(c)
      c += 1
    end
    self
  end
end
