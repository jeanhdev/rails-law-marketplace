class DashboardController < ApplicationController

  def profile
    @user = current_user
    @services = @user.services
    @procedures = @user.procedures
  end
end
