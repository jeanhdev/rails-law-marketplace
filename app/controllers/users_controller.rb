class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :edit_lawyer, :update_lawyer]

  def dashboard
    # ajouter procedures et services liees à l'user id
  end

  def show
  end

  def edit
    redirect_to root_path if current_user != @user
  end

  def edit_lawyer
  end

  def update_lawyer
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit_lawyer
    end
  end

  def update
    if @user.update(user_params)
      redirect_to root_path
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
    @user = current_user
  end
end
