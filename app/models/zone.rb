class Zone < ActiveRecord::Base
    Zone has_many :Booking
end
class Zone < ActiveRecord::Base
    Zone belongs_to :Booking
end

