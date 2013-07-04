class UsersController < ApplicationController
  before_action :require_no_user, :only => [:new, :create]
  before_action :require_user, :only => [:index]

  def new
    @user = User.new
  end

  def create
    params.permit!
    user = User.create(params[:user])
    if user
      redirect_to users_url, notice: "Congratulations! Account was successfully created!"
    else
      render :new, alert: "Something was wrong"
    end
  end

  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def update
    
  end
end