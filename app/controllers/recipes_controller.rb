class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.includes(:user)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit; end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_new_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :prep_time, :cook_time, :public)
  end
end
