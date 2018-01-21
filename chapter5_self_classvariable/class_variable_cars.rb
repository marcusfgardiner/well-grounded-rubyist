class  Car
# Key with these class variables -> want to be able to have variables that can be used across the below different instance methods and class methods
# (could also be used in other levels of the same class hierarchy)
    @@makes = []
    # this is a hash storing keys and values
    @@cars = {}
    @@total_count = 0

    # reader attribute = can ask instances what make they are and they will return the make
    attr_reader :make

    # Use 'self' rather than 'Car' for the class method definition so that it is more flexible.
    # With this format, could use this class method definition in ANY class and it would still work, not just in the Car class
##### Can use this class variable in this class method
    def self.total_count
        @@total_count
    end
    def self.add_make(make)
        unless @@makes.include?(make)
        @@makes << make
        # set to 0 as we have made a make here, but not actually created any cars of that make yet
        @@cars[make] = 0
        end
    end
    def initialize(make)
        if @@makes.include?(make)
            puts "Creating a new #{make}!"
            @make = make
            @@cars[make] += 1
            @@total_count += 1
        else raise "No such make #{make}."
        end
    end
##### Can also use this class variable in this instance method too! -> a normal variable wouldn't be able to transcend these multiple scopes
    def make_mates
        # self here gives us the object to which the message was sent i.e. the make of the specific car we are asking about
        # the @@cars hash is storing how many cars of each make - so this will return the total number of cars of that make
        @@cars[self.make]
    end
end

# Create new types of possible makes - cannot initialise a car without an already set 'make' value - as laid out in the initialize method
Car.add_make("Honda")
Car.add_make("Ford")

# Create new objects that use these new makes
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")
