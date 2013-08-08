class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :verify_logged
  before_filter :authorize_user


  def authorize_user
    puts authorize_helper
    authorize_helper
  end

  def authorize_helper
    return false unless logged_in?
    if params.keys.include?("user_id")
      current_user.id == params[:user_id]
    elsif params.keys.include?(self_class_sym) &&
    params[self_class_sym].keys.include?("user_id")
      current_user.id == params[self_class_sym]["user_id"]
    elsif params.keys.include?("id")
      current_user.id == params["id"]
    else
      false
    end
  end


  def current_user
    @current_user ||= User.find_by_token(params[:token])
  end

  def verify_logged
    unless logged_in?
      render :text => "You gotta login buddy."
    end
  end

  def logged_in?
    !!current_user
  end

  def index
    render :json => my_class.all
  end

  def show
    render :json => my_class.find(params[:id])
  end

  def create
    me = my_class.new(params[self_class_sym])
    if me.save
      render :json => me
      # redirect_to user_url(user)
    else
      render :json => me.errors, :status => :unprocessable_entity
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
      me = my_class.find(params[:id])
      me.update_attributes!(params[self_class_sym])
      render :json => me
      # redirect_to user_url(user)
    rescue => error
      render :json => error.message
    end
  end

  def destroy
    begin
      my_class.find(params[:id]).destroy
      render :text => "(self.class) #{params[:id]} destroyed"
    rescue => e
      render :text => e.message
    end
  end
end
