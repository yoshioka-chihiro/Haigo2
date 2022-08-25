class Public::RecipesController < ApplicationController
  def index
    @recipe = Recipe.new
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
      flash[:notice] = "登録していません"
      render "index"
    end
  end

  def edit
  end

  private

  def recipes_params
    params.require(:recipe).permit(:member_id, :name, :wholesale_id, :end_user_id, :manufacturing_cost, :material_cost, :for_use)
  end

end
