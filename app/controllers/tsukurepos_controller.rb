class TsukureposController < ApplicationController

  before_action :authenticate_user!, only: [:new]

  def new
    @tsukurepo = Tsukurepo.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @tsukurepo = @recipe.tsukurepos.new(tsukurepo_params)
    @tsukurepo.user = current_user
    if @tsukurepo.save
      redirect_to recipe_path(params[:recipe_id])
    else
      render 'new'
    end
  end

  private

    def tsukurepo_params
      params[:tsukurepo].permit(:content, :photo, :recipe_id)
    end
end
