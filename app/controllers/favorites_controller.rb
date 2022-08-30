class FavoritesController < ApplicationController
  before_action :set_recipe
  before_action :authenticate_user!

  def create
    if @recipe.user_id != current_user.id
      @favorite = Favorite.create(user_id: current_user.id, recipe_id: @recipe.id)
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, recipe_id: @recipe.id)
    @favorite.destroy
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
