class Api::SessionsController < ApplicationController
  def destroy
    if current_user
      logout!
      render json: {}
    else
      render status: 404
    end
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user.nil?
      render json: ['invalid credentials'], status: 401
    else
      login!(@user)
      render json: ['logged in successfully']
    end
  end
end
