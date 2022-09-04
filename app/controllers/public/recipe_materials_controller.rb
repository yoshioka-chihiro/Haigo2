class Public::RecipeMaterialsController < ApplicationController

  def index
  end

  def edit
  end

  def show
  end

  def new
    @recipe_material = RecipeMaterial.new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_materials = @recipe.recipe_materials
  end

  def create
    @recipe_material = RecipeMaterial.new(recipe_materials_params)
    if @recipe_material.save!
      flash[:notice] = "原料追加完了"
      redirect_to new_recipe_material_path(recipe_id: @recipe_material.recipe_id)
    else
      @recipe_material = RecipeMaterial.new
      flash[:notice] = "登録していません"
      render "new"
    end
  end

  private

  def recipe_materials_params
    params.require(:recipe_material).permit(:amount,:material_id, :recipe_id)
  end

end
