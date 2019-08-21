class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def divorce
    @services = Service.all
  end

  def show
  end

  def profile_saul
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to service_path(@service), notice: 'Votre prestation a bien été créé.'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to service_path(current_user), notice: 'Votre prestation a bien été modifié.'
    else
      render 'edit'
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path, notice: 'Votre prestation a bien été supprimé.'
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :description, :duration, :category, :price)
  end
end
