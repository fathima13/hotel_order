class OrderItemsController < ApplicationController
   def index
    @orderitems = OrderItem.all
  end

  def show
  	@orderitem = OrderItem.find(params[:id])
  end
  def new
    @order=Order.find(params[:order_id])

    @orderitem = @order.order_items.build
    @dishes=@order.hotel.dishes
    
      end

  def edit
  	@orderitem = OrderItem.find(params[:id])
  end

  def create
    @orderitem = OrderItem.new
    @orderitem.quantity = params[:order_item][:quantity]
    @orderitem.save
    redirect_to order_url(id: params[:order_id])
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
