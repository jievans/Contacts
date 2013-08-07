class UsersController < ApplicationController
  def index
    render :json => User.all
  end

  def show
    render :json => User.find(params[:id])
  end

  def create
    user = User.new(params[:user])
    if user.save
      #render :json => user
      redirect_to users_url(user)
    else
      render :json => user.errors, :status => :unprocessable_entity
    end
  end

  def new
    render :text => "There are no forms in this app!"
  end

  def edit
    render :text => "There are no forms in this app!"
  end

  def update
    begin
      User.find(params[:id]).update_attributes!(params[:user])
      redirect_to user_url(user)
    rescue => error
      render :json => error.message
    end
  end

  def destroy
    User.find(params[:id]).destroy
    render :text => "User destroyed"
  end
end
