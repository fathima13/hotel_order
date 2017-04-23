class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.save
    redirect_to users_url
    end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
      @user.save
   redirect_to users_url
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user=User.find(params[:id])
   @user.destroy
   redirect_to users_url
  end
end
