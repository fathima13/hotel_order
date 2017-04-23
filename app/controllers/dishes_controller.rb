class DishesController < ApplicationController
  def index
    @dishes=Dish.all
    #@hotel=Hotel.find(params[:hotel_id])
  ## @dish=@hotel.dishes.build
     end
  def create
    @hotel=Hotel.find(params[:hotel_id])
    m=@hotel.dishes.build
    m.name = params[:dish][:name]
    m.price = params[:dish][:price]
    m.save
    redirect_to hotel_url(id:@hotel.id)
  end
  def new
    @hotel=Hotel.find(params[:hotel_id])
   @dishes=@hotel.dishes
   @dish=@hotel.dishes.build
     end
  def edit
  @hotel=Hotel.find(params[:hotel_id])
   @dishes=@hotel.dishes
   @dish=@dishes.find(params[:id])
    end
  def update
   @hotel=Hotel.find(params[:hotel_id])
   @dishes=@hotel.dishes
   @dish=@hotel.dishes.build
   @dish=@dishes.find(params[:id])
   @dish.name = params[:dish][:name]

   @dish.price = params[:dish][:price]
      @dish.save
   redirect_to hotel_dishes_url
 end
 
 def destroy
   @hotel=Hotel.find(params[:hotel_id])
   @dishes=@hotel.dishes
   @dish=@hotel.dishes.build
   @dish=@dishes.find(params[:id])
   @dish.destroy
  redirect_to hotel_dishes_url
 end
 def show
    @hotel=Hotel.find(params[:hotel_id])
   @dishes=@hotel.dishes
   @dish=@hotel.dishes.build
   @dish=@dishes.find(params[:id])
 end
end
