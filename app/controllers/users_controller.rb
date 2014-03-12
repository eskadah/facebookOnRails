class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    #@user = User.find(params[:id])
    if user_signed_in?
    @posts = current_user.posts.order('created_at DESC')
    else
      redirect_to new_user_session_path

    end


  end
end
