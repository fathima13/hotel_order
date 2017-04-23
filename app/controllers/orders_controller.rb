class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  	@order = Order.find(params[:id])
  end
  def new
    @order = Order.new
    end

  def edit
  	@order = Order.find(params[:id])
  end

  def create
    @order = Order.new
    @hotel=Hotel.all
    @dish=Dish.all
    @order.name = params[:order][:name]
    @order.save
    redirect_to orders_url
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
