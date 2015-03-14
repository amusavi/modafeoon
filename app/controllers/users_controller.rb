class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
   def show
     @user = User.find(params[:id])
  end
  def login
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Modafeoon community:)"
      redirect_to @user

    else
       #redirect_to action: "new"
       render  'new'
    end
  end
  def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
end

