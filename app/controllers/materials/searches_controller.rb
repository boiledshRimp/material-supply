class Materials::SearchesController < ApplicationController
  def index
    @materials = Material.search(params[:keyword]).order("created_at DESC").page(params[:page]).per(6)
  end
end
