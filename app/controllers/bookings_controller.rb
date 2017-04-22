
#require 'booking_decorator'
require 'my_logger.rb'


class BookingsController < ApplicationController
 
 #added in line
 before_filter :authenticate_user!
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end
  
    #this is for the search fucntion.  
  #  def index
   #@bookings = Booking.all
    # #instance variable that contains all the bookings
    #if params[:search]
      #that search param is linked in html file
    #@bookings= Booking.search(params[:search])
     #sort the results by date in ascending order
     #@bookings= @bookings.booking("date_at ASC")
      #else
       ##if there are no params you can use desending order
     #@booking = @bookings.booking("date_at DESC")
      # end
     #end
    #end


  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  
   
        #added in lines for decorator
           def create
           @booking = Booking.new(booking_params)
           @booking.firstname = params[:booking][:firstname]
           @booking.lastname = params[:booking][:lastname]
           @booking.date = params[:booking][:date]
           @booking.start = params[:booking][:start]
           @booking.hours = params[:booking][:hours]
           @booking.players = params[:booking][:players]
           @booking.zone = params[:booking][:zone]


           #error here with code
           # create an instance/object of a BasicBooking
          
         #  myBooking = BasicBooking.new(75, @booking.firstname,@booking.lastname,@booking.date,
          #  @booking.start,@booking.hours,@booking.players,@booking.zone)
          
            # add the extra features to the new booking
            
           # if params[:booking][:hours].to_s.length > 0 then
            # myBooking = HourDecorator.new(myBooking)
             #end
              # if params[:booking][:person].to_s.length > 0 then
            #  myBooking = PersonDecorator.new(myBooking)
             #     end
              #  if params[:booking][:zone].to_s.length > 0 then
              #myBooking = ZonesDecorator.new(myBooking)
               #  end

                ## populate the cost and the description details
                #@booking.cost = myBooking.cost
                 #@booking.description = myBooking.details
     
    
      
  #added validation line here wouldnt work :(
   #@booking =@profile.booking.build(params.require(:date,:start,:duration,:players,:zone ).permit!)
   #@booking =@profile.booking.build(params.require(:date,:start,:duration,:players,:zone ).permit(:details))
   
   # retrieve the instance/object of MyLogger class
   #this should send the information to the logger
    #logger = MyLogger.instance
    #logger.logInformation("A new Booking completed: " + @booking.description)


    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  
  #added in the below as you have to update whats created 
  def update
   
   #  @booking = Booking.new()
    # @booking.firstname = params[:booking][:firstname]
    # @booking.lastname = params[:booking][:lastname]
    # @booking.date = params[:booking][:date]
    # @booking.start = params[:booking][:start]
    # @booking.hours = params[:booking][:hours]
    # @booking.players = params[:booking][:players]
    #@booking.zone = params[:booking][:zone]  
    
	# create an instance/object of a BasicBooking
    # here I hard-code the cost of bokings,
    # namely all my basic bokings are going to cost 75
     #   myBooking = BasicBooking.new(75, @booking.firstname,@booking.lastname,@booking.date,
      # @booking.start,@booking.hours,@booking.players,@booking.zone)
    
	# add the extra features to the myBooking object if the user selected them
    # we use an implementation of the decorator pattern
    # to dynamically provide the extra features to a Booking
    # each of the check-boxex the user checks is used to
    # decide whether to apply a specific decoration
       #    if params[:booking][:hours].to_s.length > 0 then
        # myBooking = HourDecorator.new(myBooking)
         # end
          # if params[:booking][:person].to_s.length > 0 then
           #   myBooking = PersonDecorator.new(myBooking)
            #end
             #if params[:booking][:zone].to_s.length > 0 then
              #myBooking = ZonesDecorator.new(myBooking)
               #  end

           ## update the cost and the description details
       #   @bokings.cost = myBooking.cost
        #  @bokings.description = myBooking.details
         # build a hash whihc is an aray with the updated information of the car
         # updated_information = {
          # "firstname" => @booking.firstname,
           # "lastname" => @booking.lastname,
            # "date" => @booking.date,
             #  "start" => @booking.start,
              # "hours" => @booking.hours,
               #  "players" => @booking.players
				        #  "zone" => @booking.zone,
				         #  "cost" => @booking.cost,
    #}
	
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:firstname, :lastname, :date, :start, :hours, :players, :zone)
    end
end
