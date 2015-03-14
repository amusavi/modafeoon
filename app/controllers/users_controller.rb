class UsersController < ApplicationController
  def new
     render :layout => 'simple'
     @user = User.new
  end
  
   def show
     render :layout => 'simple'
     
  end
  def login
     render :layout => 'simple'
     
  end

end

