class PicturesController < ApplicationController
  before_action :ensure_logged_in, except: [:index]
  before_action :load_picture, only: [:show, :edit, :update, :destroy]
  before_action :ensure_ownership, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
    @most_recent_pictures = Picture.most_recent_five
  end

  def new
    @picture = Picture.new
  end

  def show
    # @picture = Picture.find(params[:id])
    @comment = Comment.new
  end

  def create
    @picture = Picture.new

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

    # assigns the picture to the user that is logged in
    @picture.user_id = current_user.id

    if @picture.save
      # if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to pictures_url
    else
      # otherwise render new.html.erb
      render :new
    end
  end

  def edit
    # @picture = Picture.find(params[:id])
  end

  def update

    # @picture = Picture.find(params[:id])

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

    if @picture.save
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end

  def destroy
    # @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_url
  end


  private

  def load_picture
    @picture = Picture.find(params[:id])
  end

  def ensure_logged_in
    redirect_to root_path if !current_user
  end

  def ensure_ownership
    redirect_to root_path if current_user != @picture.user
  end
end
