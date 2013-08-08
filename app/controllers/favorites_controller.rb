class FavoritesController < ApplicationController

  # before_filter :authenticate_user

  def my_class
    Favorite
  end

  def self_class_sym
    :favorite
  end

  def index
    if params.keys.include?("user_id")
      user = User.find(params["user_id"])
      render :json => user.favorite_contacts
    else
      super
    end
  end

end
