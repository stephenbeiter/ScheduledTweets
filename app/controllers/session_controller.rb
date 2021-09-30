class SessionController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: user_params[:email])
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end