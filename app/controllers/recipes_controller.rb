class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.includes(:user)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new; end

  def edit; end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_new_path
  end
end
