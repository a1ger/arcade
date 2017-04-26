class Booking < ActiveRecord::Base
    has_many :Profile
    has_many :user
     def self.search(search_for)
      where("lastname LIKE ?", "%#{search_for}%")
     end
    
    
end

