class SessionsController < ApplicationController

  # skip_before_filter :verify_logged, :only => [:create]
  # skip_before_filter :authorize_user

  def create
    user = User.find_by_username(params[:username])
    if User.pw_hash(params[:password]) == user.password_hash
      user.login
      render :text => user.token
    else
      render :text => "Your password or username are incorrect."
    end
  end

  def destroy
    current_user.token = SecureRandom.hex
    current_user.save!
    render :text => "Logged out."
  end

end
