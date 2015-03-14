class ShahidsController < ApplicationController
  def new
    @shahid = Shahid.new
  end
  
   def show
     @shahid = Shahid.find(params[:id])
  end

  def create
    if @shahid.save
       @shahid = Shahid.new(shahid_params)
       render 'new'
    else
       #redirect_to action: "new"
       render  'new'
    end
  end
  def shahid_params
      params.require(:shahid).permit(:pname, :ename, :bio)
  end
end
