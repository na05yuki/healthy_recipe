class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order("created_at DESC")
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
   end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,:explanation,:time_required_id,:number_of_people_id,:category_id)
  end
end
