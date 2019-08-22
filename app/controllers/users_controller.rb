class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :edit_user, :update_lawyer]

  def dashboard
    # ajouter procedures et services liees à l'user id
  end

  def show
  end

  def edit
    render 'devise/registrations/edit'
  end

  # def edit_lawyer
  # end

  def update_lawyer
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit_user
    end
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path
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
    params.require(:user).permit(:first_name, :last_name, :email, :job, :specialty, :experience, :description, :address, :avatar, :firm)
  end

  def set_user
    @user = current_user
  end
end
