class RecipesController < ApplicationController

  before_action :authenticate_user!, only: [:new]

  def index
    #ViewのFormで取得したパラメータをモデルに渡す
    @recipes = Recipe.search(params[:search])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

    def recipe_params
      params[:recipe].permit(:name, :content, :photo)
    end
end
