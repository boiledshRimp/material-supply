class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @username = user.username
    @materials = user.materials.page(params[:page]).per(6).order("created_at DESC")
  end
end
