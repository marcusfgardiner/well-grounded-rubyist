class Ticket
    #read/ get these attributes -> automatically reads the @instance variable
    attr_reader :venue, :date, :colour
    #write/ set these attributes -> automatically creates the @instance variable
    attr_writer :colour
    #read/get AND write/ set these attributes -> automatically creates and reads the @ instance variable
    attr_accessor :price

    def initialize(venue, date)
        @venue = venue
        @date = date
    end

end

#### Class methods can be defined outside of class method defintions (i.e. not within class Ticket ... end)
# Still best practice to include them within the class definition so its clear
    def Ticket.most_expensive(*tickets)
        tickets.max_by(&:price)
    end

th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
th.price = 63.00
cc.price = 30.10334
puts "2 tickets created"
puts "The first ticket is for a #{th.venue} at a #{th.date}, and costs £#{"%.2f" % th.price}" # the "%.2f" % => formats the price to 2 dp
puts "The second ticket is for a #{cc.venue} at a #{cc.date}"

highest = Ticket.most_expensive(th,cc)
puts "The highest-priced ticket is the one for #{highest.venue}."
# Proving that class methods aren't related to instances = run this code. Won't work on an instance of the class, does work -- as above -- on the class Ticket (highest = Ticket.most_expensive(th,cc))
# Error = undefined method `most_expensive' for #<Ticket:0x00000002004bd0> (NoMethodError)
#    puts "Testing the response of a ticket instance...."
#    wrong = cc.most_expensive


    # syntatic sugar of giving a ticket a colour
    th.colour = "yellow"
    puts "Ticket colour is #{th.colour}"
