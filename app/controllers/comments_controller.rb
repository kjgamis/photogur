class CommentsController < ApplicationController
  def create
    @comment = Comment.new

    @comment.name = params[:comment][:name]
    @comment.message = params[:comment][:message]
    @comment.picture_id = params[:picture_id]

    @comment.save

    redirect_to picture_url(params[:picture_id])
  end

  def edit
    @comment = Comment.find(params[:id])
    @picture = Picture.find(params[:picture_id])

  end

  def update

    @comment.name = params[:comment][:name]
    @comment.message = params[:comment][:message]
    @comment.picture_id = params[:picture_id]

    @comment.save

    redirect_to picture_url(params[:picture_id])
  end

  def destroy

    @picture = Picture.find(params[:picture_id])
    @comment = Comment.find(params[:id])

    @comment.destroy

    redirect_to picture_url(@picture.id)

  end
end
