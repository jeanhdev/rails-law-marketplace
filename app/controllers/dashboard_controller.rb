class DashboardController < ApplicationController

  def profile
    @user = current_user
    @services = @user.services if @user.job != 'justiciable'
    @procedures = @user.procedures
  end
end
