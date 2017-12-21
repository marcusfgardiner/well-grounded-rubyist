class C
    def initialize(n)
        @n = n
    end
    def n
        @n
    end
    def compare(c)
### as c1 is the object on which the message is called, self.n i.e. n is the same as c1.n (when don't give a specific object to call message on, uses default variable i.e self)
### Therefore, when you run the code at the bottom, its the same as ' if c2.n > c1.n ' which is the same as ' if c2.n > self.n '
##### This can execute despite protection as both c's are the instances of the same class => c.n can still be executed despite the fact n is protected 
#####(if it c was not another instance of the same class, it wouldn't run)
        if c.n > n
            puts "the other objects n is bigger"
        else
            puts "the other objects n is the same or smaller"
        end
    end
    protected :n
end

c1 = C.new(100)
c2 = C.new(101)
#c1 is doing the comparing, c2 has to execute its 'n' method
### as c1 is the object on which the message is called, self.n i.e. n is the same as c1.n (when don't give a specific object to call message on, uses default variable i.e self)
c1.compare(c2)