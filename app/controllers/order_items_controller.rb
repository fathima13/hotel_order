class OrderItemsController < ApplicationController
   def index
    @orderitems = OrderItem.all
  end

  def show
  	@orderitem = OrderItem.find(params[:id])
  end
  def new
    @orderitem = OrderItem.new
    @hotels=Hotel.all
    @dishes=@hotels.dishes.all
      end

  def edit
  	@orderitem = OrderItem.find(params[:id])
  end

  def create
    @orderitem = OrderItem.new
    
    @orderitem.quantity = params[:order_item][:quantity]
    @orderitem.save
    redirect_to order_items_url
    end
  def update
    @orderitem = OrderItem.find(params[:id])
    @orderitem.name = params[:order_item][:quantity]
    @orderitem.save
    redirect_to order_items_url
  end
  def destroy
    @orderitem=OrderItem.find(params[:id])
   @orderitem.destroy
   redirect_to order_items_url
  end

end
