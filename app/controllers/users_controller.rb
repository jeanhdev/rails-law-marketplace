class UsersController < ApplicationController
  before_action :set_user, only: [:dashboard, :show, :edit, :update, :destroy]

  def dashboard
    # ajouter procedures et services liees à l'user id
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def delete
    @user.destroy
    redirect_to destroy_user_session_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :job, :specialty, :experience, :description, :address, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
