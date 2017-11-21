class Ticket
    VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
    
    attr_reader :venue, :date
    
    def initialize(venue,date)
        if VENUES.include?(venue)
            @venue = venue
        else
            raise ArgumentError, "Unknown Venue '#{venue}'"
        end
        @date = date
    end
    
end


# Can modify the constant to include more venues, without a warning coming up, by modifying the object to which the constant refers 
# i.e. modifying the underlying object through modifying the variable that refers to it
venues = Ticket::VENUES
venues << "New Venue"

# whereas changing references/assignment does NOT change the constant i.e. REASSIGNMENT
# i.e. modifying the reference to the constant does nothing, just pointing this new reference variable to a new object, not changing the underlying object
venues_reference = venues
venues_reference = Ticket::VENUES
venues_reference = "Yep Yep"

##### Run the code below to show how can use CONSTANTS to ensure don't get a venue outside of the define list
# th = Ticket.new("Crap venue", "11/12/13")
cc = Ticket.new("Convention Center", "14/10/12")
dd = Ticket.new("New Venue", "12/05/12")

# puts "The first ticket is for a #{th.venue} at a #{th.date}, and costs £#{"%.2f" % th.price}" # the "%.2f" % => formats the price to 2 dp
puts "The second ticket is for a #{cc.venue} at a #{cc.date}"
puts "The third ticket is for a #{dd.venue} at a #{dd.date}"


#special notation to refer to constants outside of a class definition
puts Ticket::VENUES