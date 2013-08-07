class ApplicationController < ActionController::Base
  protect_from_forgery

  def self_class_sym
    (self.class).to_s.downcase.to_sym
  end

  def index
    render :json => (self.class).all
  end

  def show
    render :json => (self.class).find(params[:id])
  end

  def create
    me = (self.class).new(params[self_class_sym])
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
      me = (self.class).find(params[:id])
      me.update_attributes!(params[self_class_sym])
      render :json => me
      # redirect_to user_url(user)
    rescue => error
      render :json => error.message
    end
  end

  def destroy
    begin
      (self.class).find(params[:id]).destroy
      render :text => "(self.class) #{params[:id]} destroyed"
    rescue => e
      render :text => e.message
    end
  end
end
