class HotelsController < ApplicationController
  def index
  	  @hotels=Hotel.all
      @dish=Dish.all

  end
  def create
  	@hotel=Hotel.new
  	@hotel.name = params[:hotel][:name]
  	@hotel.save
  	redirect_to hotels_url
  end
  def new
  	@hotel=Hotel.new
  end
  def edit
  	@hotel=Hotel.find(params[:id])
  end
  def update
   @hotel=Hotel.find(params[:id])
   @hotel.name = params[:hotel][:name]
    @hotel.save
   redirect_to hotels_url
 end
 
 def destroy
   @hotel=Hotel.find(params[:id])
   @hotel.destroy
   redirect_to hotels_url
 end
 def show
   @hotel=Hotel.find(params[:id])
   @dishes=@hotel.dishes
   @dish=@dishes.build
   byebug
 end
end
