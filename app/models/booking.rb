class Booking < ActiveRecord::Base
    has_many :Profile
end
class Booking < ActiveRecord::Base
    has_many :user
end
#This is where the search function should start
#class Booking < ActiveRecord::Base
 #  def self.search(search_for)
  #    Booking.where("lower(lastname) = ?", search_for.downcase)
   # end
#end
