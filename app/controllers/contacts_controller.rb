class ContactsController < ApplicationController

  #before_filter :authenticate_user

  def my_class
    Contact
  end

  def self_class_sym
    :contact
  end

  def index
    if params.keys.include?("user_id")
      user = User.find(params["user_id"])
      render :json => user.contacts
    else
      super
    end
  end

end
