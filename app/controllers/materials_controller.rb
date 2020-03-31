class MaterialsController < ApplicationController

  before_action :set_material, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @materials = Material.includes(:user).order("created_at DESC").page(params[:page]).per(6)
  end

  def new
    @material = Material.new
  end

  def create
    Material.create(material_params)
  end

  def show
    @comment = Comment.new
    @comments = @material.comments.includes(:user)
    #@material = Material.find(params[:id])
    @materials = @material.user.materials
  end

  def edit
    #@material = Material.find(params[:id])
  end

  def update
    material = Material.find(params[:id])
    material.update(material_params)
  end

  def destroy
    material = Material.find(params[:id])
    material.destroy
  end

  private
  def material_params
    params.require(:material).permit(:text, :image).merge(user_id: current_user.id)
  end

  def set_material
    @material = Material.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
