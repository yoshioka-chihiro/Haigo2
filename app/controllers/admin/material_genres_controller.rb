class Admin::MaterialGenresController < ApplicationController
  def index
    @material_genre = MaterialGenre.new
    @material_genres = MaterialGenre.all
  end

  def create
    @material_genre = MaterialGenre.new(material_genres_params)
    if @material_genre.save!
      flash[:notice] = "登録完了"
      redirect_to admin_material_genres_path
    else
      @material_genres = MaterialGenre.all
      render "index"
    end
  end

  def edit
  end

  private

  def material_genres_params
    params.require(:material_genre).permit(:name)
  end
end
