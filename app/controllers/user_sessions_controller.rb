class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(user_session_params)

    if @user_session.save
      redirect_to users_url
    else
      render :new, notice: "Param pam pam"
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to new_user_session_url
    flash[:notice] = "Logout successful!"
  end

  private

    def user_session_params
      params.require(:user_session).permit(:email, :password)
    end
end