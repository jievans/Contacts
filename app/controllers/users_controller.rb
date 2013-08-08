class UsersController < ApplicationController

  #before_filter :authenticate_user

  skip_before_filter :authorize_user, :only => [:index]

  def my_class
    User
  end

  def self_class_sym
    :user
  end

end
