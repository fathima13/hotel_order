class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  	@order = Order.find(params[:id])
  end

  def edit
  	@order = Order.find(params[:id])
  end

  def create
    # byebug
    @user = User.find(params[:user_id])
    @order = @user.orders.create(hotel_id: params[:hotel_id])
    # Order.create(user_id: @user.id)
    redirect_to order_url(id: @order.id)
    end
  def update
    @order = Order.find(params[:id])
    @order.name = params[:order][:name]
      @order.save
   redirect_to orders_url
  end
  def destroy
    @order=Order.find(params[:id])
   @order.destroy
   redirect_to orders_url
  end
end
