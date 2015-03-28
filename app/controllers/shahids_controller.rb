class ShahidsController < ApplicationController

  def show
    @shahid = Shahid.find(params[:id])
    render :layout => "sh_temp"
  end
  
  def new
    @shahid = Shahid.new
  end

  def create
    @shahid = Shahid.new(shahid_params)
    if @shahid.save
      flash[:success] = "saved new Shahid"
      redirect_to @shahid     
    else
      render 'new'
    end
  end
  def index
 @shahids = Shahid.paginate(page: params[:page])
  end

  def edit
    @shahid = Shahid.find(params[:id])
  end
  
  def destroy
    Shahid.find(params[:id]).destroy
    flash[:success] = "Shahid deleted"
    redirect_to shahids_url
  end
  
  private

    def shahid_params
      params.require(:shahid).permit(:pname, :ename, :bio, :link1, :link2, :link3 ,:picture)
    end
   
end  

