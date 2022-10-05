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
      # redirect_to @recipe
      # undefined method `recipe_url' for #<RecipesController:0x0000000000e628>
      # Did you mean?
      # recipes_url

      # redirect_to recipe_url(@recipe)
      # undefined method `recipe_url' for #<RecipesController:0x0000000000e628>
      # Did you mean?
      # recipes_url

      # why am I getting this error?
      # undefined method `recipe_url' for #<RecipesController:0x0000000000e628>
      # Did you mean?
      # recipes_url
      # why am I getting this error? answer: I need to add the following to config/routes.rb:
      # get 'recipes/:id', to: 'recipes#show'

      redirect_to recipes_url(@recipe)
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
