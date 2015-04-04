#encoding: utf-8
class UsersController < ApplicationController
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy,
                                        :following, :followers]
  def show
    @user = User.find(params[:id])
    @feed_items = current_user.feed.paginate(page: params[:page])

  end
  def index
    @users = User.paginate(page: params[:page])
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #UserMailer.account_activation(@user).deliver_now
      @user.send_activation_email
      flash[:info] = "خدا به شما جزای خیر دهد. رایانامه خود را جهت فعال سازی نام کاربری چک نمایید."
      render 'new'
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

    def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      redirect_to url_for(:controller => :users, :action => :edit)
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end 
  
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    # Confirms a logged-in user.

end
