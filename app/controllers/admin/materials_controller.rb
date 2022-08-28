class Admin::MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def edit
  end

  def show
  end

  def new
    @material = Material.new
  end
  
  def create
    @material = Material.new(materials_params)
    if @material.save!
      flash[:notice] = "登録完了"
      redirect_to admin_materials_path
    else
      @material = Material.new
      flash[:notice] = "登録していません"
      render "new"
    end
  end
  
  private

  def materials_params
    params.require(:material)
    .permit(
      :material_genre_id,
      :name,
      :distributor,
      :manufacturer,
      :country_of_origin,
      :packing,
      :preservation_method,
      :price
      )
  end
  
end
