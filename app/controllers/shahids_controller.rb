#encoding: utf-8
class ShahidsController < ApplicationController

  def show
    @shahid = Shahid.find(params[:id])
    @comment = @shahid.comments.build 
    @comments = @shahid.comments.paginate(page: params[:page])
    
    cookies[:viewing_shahid] = @shahid.id


    render :layout => "sh_temp"    
  end
  
  def new
    @shahid = Shahid.new
  end

  def create
    @shahid = Shahid.new(shahid_params)
    if @shahid.save
      flash[:success] = "خدا به شما توفیق شهادت عنایت کند. شهید مورد نظر با موفقیت ثبت شد."
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
    flash[:success] = "شهید مورد نظر از مجموعه شهدا حذف شد."
    redirect_to shahids_url
  end
  
 def update
    @shahid = Shahid.find(params[:id])
    if @shahid.update_attributes(shahid_params)
      # Handle a successful update.
      flash[:success] = "مشخصات شهید مورد نظر به روزرسانی شد"
      redirect_to @shahid
    else
      render 'edit'
    end
  end 
 
  private

    def shahid_params
      params.require(:shahid).permit(:pname, :ename, :bio, :link1, :link2, :link3 ,:picture)
    end
   
end  

