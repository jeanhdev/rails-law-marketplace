class DashboardController < ApplicationController

  def profile
    @user = current_user
    @jobs = @user.job
    @services = @user.services
    @procedures = @user.procedures
    @proposed_services = @user.proposed_services
  end
end
