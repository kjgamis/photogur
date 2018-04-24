class UsersController < ApplicationController
  has_many :comments

  def new
    @user = User.new

  end

  def create
    @user = User.new

    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      # logs in user after making account
      session[:user_id] = @user.id
      redirect_to pictures_url
    else
      render :new
    end
  end
end
