#class profileObserver < ActiveRecord::Observer
 #   def after_update(record)
  #      # use the MyLogger instance method to retrieve the single instance/object of the class
   #     @logger = MyLogger.instance
    #    # use the logger to log/record a message about the new profile
     #   @logger.logInformation("###############Observer Demo:#")
      #  @logger.logInformation("+++ ProfileObserver #{record.firstname} #{record.lastname} has been updated.profile #{record.new}")
       # @logger.logInformation("##############################")
#    end
#end