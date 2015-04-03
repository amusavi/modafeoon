#encoding: utf-8
class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @comment =   Shahid.find_by(id:cookies[:viewing_shahid]).comments.build(comment_params)
    if @comment.save
      flash[:success] = "یادداشت شما با موفقیت ذخیره شد!"
      redirect_to(:back)
    else
      @feed_items = []
      flash[:unsuccess] = "قادر به ذخیره این پیام نیستیم!"
      redirect_to(:back)
    end
  end

 def destroy
    @comment.destroy
    flash[:success] = "Micropost deleted"
    redirect_to(:back)
  end
  private

    def comment_params
      params.require(:comment).permit(:content)
    end
end
