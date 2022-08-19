class Admin::EndUsersController < ApplicationController

  def index
    @end_user = EndUser.new
    @end_users = EndUser.all
  end

  def create
    @end_user = EndUser.new(end_users_params)
    if @end_user.save
      flash[:notice] = "登録完了"
      redirect_to admin_end_users_path
    else
      @end_users = EndUser.all
      render "index"
    end
  end

  def edit
  end

  private

  def end_users_params
    params.require(:end_user).permit(:name)
  end
end
