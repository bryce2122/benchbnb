class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login
      redirect_to '/'
    else
      render json: ['please try again'], status: 422
    end 

  end


  private
    def user_params
      params.require(:user).permit(:username,:password)
    end
end
