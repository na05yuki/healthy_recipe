class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_recipe, only: [:show, :edit]
  before_action :move_to_index, only: [:edit]

  def index
    @recipes = Recipe.order('created_at DESC')
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
  end

  def edit
  end

  def update
    recipe = Recipe.find(params[:id])
    if recipe.update(recipe_params)
      redirect_to recipe_path
    else
      render :edit
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    if current_user.id == recipe.user_id
      recipe.destroy
      redirect_to root_path
    end
  end

  def category
    @q = Recipe.ransack(params[:q])
    @recipes = @q.result
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredient, :explanation, :time_required_id, :number_of_people_id, :category_id,
                                   :image).merge(user_id: current_user.id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless current_user.id == @recipe.user_id
  end
end
