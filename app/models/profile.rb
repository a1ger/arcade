class Profile < ActiveRecord::Base
    has_many:bookings
end

#observer to send text once new profile was set up
class Profile < ActiveRecord::Base
  after_create :send_text
  private
  def send_text
    #send a welcome text
  end
end

