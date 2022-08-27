class Admin::RecipeGenresController < ApplicationController

  def index
    @recipe_genre = RecipeGenre.new
    @recipe_genres = RecipeGenre.all
  end

  def create
    @recipe_genre = RecipeGenre.new(recipe_genres_params)
    if @recipe_genre.save!
      flash[:notice] = "登録完了"
      redirect_to admin_recipe_genres_path
    else
      @recipe_genres = RecipeGenre.all
      render "index"
    end
  end

  def edit
  end

  private

  def recipe_genres_params
    params.require(:recipe_genre).permit(:name, :allergy_id)
  end

end
