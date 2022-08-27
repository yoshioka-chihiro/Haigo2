class Admin::AllergiesController < ApplicationController
  def index
    @allergy = Allergy.new
    @allergies = Allergy.all
  end

  def create
    @allergy = Allergy.new(allergies_params)
    if @allergy.save!
      flash[:notice] = "登録完了"
      redirect_to admin_allergies_path
    else
      @allergies = Allergy.all
      render "index"
    end
  end

  def edit
  end

  private

  def allergies_params
    params.require(:allergy).permit(:name, :is_specific)
  end

end
