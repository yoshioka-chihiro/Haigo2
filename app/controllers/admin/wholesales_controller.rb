class Admin::WholesalesController < ApplicationController
  def index
    @wholesale = Wholesale.new
    @wholesales = Wholesale.all
  end

  def create
    @wholesale = Wholesale.new(wholesales_params)
    if @wholesale.save
      flash[:notice] = "登録完了"
      redirect_to admin_wholesales_path
    else
      @wholesales = Wholesale.all
      render "index"
    end
  end

  def edit
  end

  private

  def wholesales_params
    params.require(:wholesale).permit(:name)
  end

end
