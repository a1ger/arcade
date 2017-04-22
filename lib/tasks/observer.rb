# require the observer lib file
require “observer”
class Notifier
end
 
class EmailNotifier < Notifier
  def create(profile)
      puts “Sending email to: ‘#{profile.owner}’ "Thanks for seting up act.”
      # send the email mechanism
    end
  end

  
  class SMSNotifier < Notifier
  def update(bank_account)
    if bank_account.balance <= 0.5 
      puts “Sending SMS to: ‘#{profile.owner}’ "Thanks for seting up act.”
      # send sms mechanism
    end
  end
end
