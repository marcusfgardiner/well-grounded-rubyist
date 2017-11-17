class Ticket
    
    def initialize(venue, date)
       puts "Creating a new ticket!" 
       # when create ticket, want to feed in a venue and date
       @venue = venue
       @date = date
    end
    
    def event
        "TBC"
    end
    
    #Setter methods for value and date, given these were created with the initialize method at point of instance creation
    def venue
        @venue
    end
    
    def date
        @date
    end
    
    # Creating an instance variable when NOT AT POINT OF CREATION i.e. not including it in the initialize method
    #This method works but is not the nicest way
    def set_price(amount)
        #using a setter as a filter / data normalizer
        if (amount*100).to_i == amount * 100
            @price = amount
        else
            puts "Price seems malformed for this setting"
        end
    end
    
    def price
        @price
    end
    
    # syntantic sugar version of setting something
    def colour=(colour)
        @colour = colour
    end
    
    def colour
        @colour
    end
end

th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
th.set_price(63.00)
cc.set_price(30.10334)
puts "2 tickets created"
puts "The first ticket is for a #{th.venue} at a #{th.date}, and costs £#{"%.2f" % th.price}" # the "%.2f" % => formats the price to 2 dp
puts "The second ticket is for a #{cc.venue} at a #{cc.date}"

    # syntatic sugar of giving a ticket a colour
    th.colour = "yellow"
    puts "Ticket colour is #{th.colour}"