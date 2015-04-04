class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception
  include SessionsHelper
  include CommentsHelper

  private

# Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    # Confirms the correct user. 
    def admin_user
      unless current_user && current_user.admin?
        store_location
        flash[:danger] = "Please log in as admin."
        redirect_to users_url
      end
    end  
    
    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end
end
