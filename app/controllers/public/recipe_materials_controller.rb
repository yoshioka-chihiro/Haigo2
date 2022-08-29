class Public::RecipeMaterialsController < ApplicationController
  
  def index
    @recipe_materials = RecipeMaterial.all
  end

  def edit
  end

  def show
  end

  def new
    @recipe_material = RecipeMaterial.new
  end
  
  def create
    @recipe_material = RecipeMaterial.new(recipe_materials_params)
    if @recipe_material.save!
      flash[:notice] = "登録完了"
      redirect_to recipe_materials_path
    else
      @recipe_material = RecipeMaterial.new
      flash[:notice] = "登録していません"
      render "new"
    end
  end
  
  private

  def recipe_materials_params
    params.require(:recipe_material)
    .permit(
      :amount,
      :material_id
      )
    .merge(recipe_id: recipe.id)
  end
  
end
