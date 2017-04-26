#Let’s use the Singleton pattern to create a logging solution for our application.


require 'singleton'

class MyLogger
    include Singleton
    #this makes the use case private so you cant declate mulple 
     def initialize
      #the constructor below, a means read only.
     @log = File.open("mylog.txt", "a")
     
     end
     #This sends the information to the log file and the flush makes sure that no information is sent twice as it clears out the buffer
        def logInformation(information)
         @log.puts(information)
          @log.flush
        end
end

#test code 
logger = MyLogger.instance
logger.logInformation("This is the first part of information")
logger.logInformation("This is the second part of information")
