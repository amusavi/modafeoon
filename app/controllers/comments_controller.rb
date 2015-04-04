#encoding: utf-8
class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @comment =   Shahid.find_by(id:cookies[:viewing_shahid]).comments.build(comment_params)
    @comment.user=current_user
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
    flash[:success] = "نظر حذف گردید"
    redirect_to(:back)
  end
  private

    def comment_params
      params.require(:comment).permit(:content,:user)
    end
    def correct_user
      @comment = current_user.comments.find_by(id: params[:id])
      redirect_to(:back) if @comment.nil?
    end
end
