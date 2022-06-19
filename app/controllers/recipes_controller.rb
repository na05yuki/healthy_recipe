class RecipesController < ApplicationController
  before_action :authenticate_user!, except: :index

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

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end


  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredient, :explanation, :time_required_id, :number_of_people_id, :category_id, :image).merge(user_id: current_user.id)
  end
end
