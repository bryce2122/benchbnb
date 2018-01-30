class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:username],params[:user][:password])
      if @user
        login
        redirect_to '/'
      else
        render json: ["invalid credentials"], status: 401
      end
    end

  def destroy
    @current_user = current_user
    if @current_user
      logout
      render "api/users/show"
    else
      render json: ["Nobody Signed In"], status: 404
    end
  end
end
