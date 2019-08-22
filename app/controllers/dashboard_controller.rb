class DashboardController < ApplicationController

  def profile
    position = ["Avocat", "Notaire", "Huissier", "Juriste"]
    @user = current_user
    @services = @user.services if @user.job != nil
    @procedures = @user.procedures
  end
end
