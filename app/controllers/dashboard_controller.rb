class DashboardController < ApplicationController

  def profile
    @user = current_user
    @services = @user.services if @user.job.nil?
    @procedures = @user.procedures
  end
end
