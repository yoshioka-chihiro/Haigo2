class Public::RecipesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @recipe = Recipe.new(recipes_params)
    if @recipe.save
      flash[:notice] = "登録完了"
      redirect_to recipes_path
    else
      @recipes = Recipe.all
      render "index"
    end
  end

  def edit
  end

  private

  def recipes_params
    params.require(:recipe).permit(:name, :wholesale_id, :end_user_id, :manufacturing_cost, :for_use)
  end

end
