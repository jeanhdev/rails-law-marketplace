class DashboardController < ApplicationController

  def profile
    @user = current_user
    @jobs = @user.job
    @services = @user.services
    @procedures = @user.procedures
  end
end
