class Public::RecipesController < ApplicationController
  def index
    @recipe = Recipe.new
    @recipes = Recipe.all
    @recipe_material = @recipe.recipe_materials.build
  end

  def show
  end

  def new
  end

  def create
    @recipe = Recipe.new(recipes_params)
    if @recipe.save!
      flash[:notice] = "登録完了"
      redirect_to recipes_path
    else
      @recipes = Recipe.all
      flash[:notice] = "登録していません"
      render "index"
    end
  end

  def edit
  end

  private

  def recipes_params
    params.require(:recipe)
    .permit(:member_id, :name, :wholesale_id, :end_user_id, :manufacturing_cost, :material_cost, :for_use, :recipe_genre_id)
  end

end
