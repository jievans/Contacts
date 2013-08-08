class UsersController < ApplicationController

  #before_filter :authenticate_user

  #before_filter :verify_logged
  before_filter :authorize_user

  skip_before_filter :authorize_user, :only => [:index]

  def authorize_user
    unless authorize_helper
      render :text => "Sadface"
    end
  end

  def authorize_helper
    return false unless logged_in?
    if params.keys.include?("user_id")
      current_user.id == params[:user_id]
    elsif params.keys.include?(self_class_sym) &&
    params[self_class_sym].keys.include?("user_id")
      current_user.id == params[self_class_sym]["user_id"]
    elsif params.keys.include?("id")
      current_user.id == params["id"].to_i
    else
      false
    end
  end

  def my_class
    User
  end

  def self_class_sym
    :user
  end

end
