class BasicBooking
    def initialize(firstname, lastname,date,start,hours,players,zone, cost)
        @firstname = firstname
        @lastname= lastname
        @date= date
        @start= start
        @hours= hours
        @players= players
        @zone= zone
        @cost = cost
        @description = "basic booking"
    end
    
    # getter method
    def cost 
        #add in cost maths here 
        return @cost
    end
    
    # a method which returns a string representation of the object of type Basicbooking
    def details
           return " #{@description},  #{@lastname}, #{@date}. #{@start}, #{@hours}, #{@players}, #{@zone}. #{@cost}"
    end
    
    # getter methods
    def firstname
        return firstname
    end
       
    def lastname
        return lastname
    end
       
    def date
          return date
    end
      
    def start
          return start
    end
         
    def hours
          return hours
    end
     
    def players
          return players
    end
      
    def zone
          return zone
    end
    def cost
          return cost
    end
 
end # ends the Basic Booking class

# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), each concrete decorator (i.e. subclass) will add its own decoration
class BookingDecorator< BasicBooking
    def initialize(basic_booking)
        #basic_booking is a real booking, i.e. the component we want to decorate
        @basic_booking = basic_booking
        super(@basic_booking.firstname, @basic_booking.lastname,@basic_booking.start,@basic_booking.hours,@basic_booking.players,@basic_booking.zone, @basic_booking.cost )
        @extra_cost = 0
        @description = "Basic Booking with no added extras"
        
    end

# override the cost method to include the cost of the extra feature	
    def cost        
        return @extra_cost + @basic_booking.cost
    end
    
        # override the details method to include the description of the extra features
    def details
        return  "#{@description} : #{@extra_cost}, #{@basic_booking.details}"
    end
    
end # ends the Booking Decorator class

  # extra hours --  define an extra feature
class HourDecorator < BookingDecorator
    def initialize(basic_booking)
        super(basic_booking)
        @extra_cost = 50
        @description = "would you like an extra hour for half price?"
    end
end
 # extra Person --  define an extra feature
class PersonDecorator < BookingDecorator
    def initialize(basic_booking)
        super(basic_booking)
        @extra_cost = 54
        @description = "Would you like an extra person for half price?"
        
    end
    
end # ends the PersonDecorator class

# extra zones --  define an extra feature
class ZonesDecorator < BookingDecorator
    def initialize(basic_booking)
        super(basic_booking)
        @extra_cost = 100
        @description = "Would you like an extra zone for half price?"
    
    end
    
end # ends the ZoneDecorator class


    

