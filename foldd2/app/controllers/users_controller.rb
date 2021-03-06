class UsersController < ApplicationController

  def dashboard

  end

  def index
    @users = User.all

  end

  def show
    @user = User.find(params[:id])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.first = params[:first]
    @user.last = params[:last]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.dorm = params[:dorm]
    @user.address1 = params[:address1]
    @user.address2 = params[:address2]
    @user.zip = params[:zip]
    @user.pud = params[:pud]
    @user.put = params[:put]
    @user.dod = params[:dod]
    @user.dot = params[:dot]

    if @user.save
      redirect_to "/users", :notice => "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.first = params[:first]
    @user.last = params[:last]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.dorm = params[:dorm]
    @user.address1 = params[:address1]
    @user.address2 = params[:address2]
    @user.zip = params[:zip]
    @user.pud = params[:pud]
    @user.put = params[:put]
    @user.dod = params[:dod]
    @user.dot = params[:dot]

    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "User deleted."
  end
end
