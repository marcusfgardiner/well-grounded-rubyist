#Think of putting onto and taking from a stack of plates
module StackLike
    def stack
        
    # what the weird || = sign is:
    # That method uses a common technique for conditionally setting a variable:
    # the ||= (or-equals) operator. The effect of this operator is to set the variable to the specified value—which in this case is a new,
    # empty array—if and only if the variable isn’t already set to something other than nil or false.
        @stack ||= []
    end
    def add_to_stack(obj)
        stack.push(obj)
    end
    def take_from_stack
        stack.pop
    end
end


=begin

CLASS VERSION OF STACK:

class Stack
  attr_reader :stack
  def initialize
    @stack = []      
  end
  def add_to_stack(obj)
    @stack.push(obj)
  end
  def take_from_stack
    @stack.pop
  end
end

=end
