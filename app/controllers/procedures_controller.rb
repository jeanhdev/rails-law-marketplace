class ProceduresController < ApplicationController
  before_action :current_procedure, only: [:show, :edit, :update]
  def index
    @procedures = Procedure.all
  end

  def show
  end

  def new
    @service = Service.find(params[:service_id])
    @procedure = Procedure.new
  end

  def create
    @service = Service.find(params[:service_id])
    @procedure = Procedure.new(procedure_params)
    @procedure.service = @service
    @procedure.user = current_user
    if @procedure.save
      # redirect_to service_path(@service), notice: 'Votre prestation a bien été créé.'
      redirect_to profile_path, notice: 'Votre prestation a bien été créé.'
    else
      render 'new'
    end
  end

  def accept
    @procedure = Procedure.find(params[:id])
    @procedure.status = "accepted"
    @procedure.save
    redirect_to profile_path, notice: "Vous venez d'accepter une procédure."
  end

  def refuse
    @procedure = Procedure.find(params[:id])
    @procedure.status = "refused"
    @procedure.save
    redirect_to profile_path, notice: "Vous venez de refuser une procédure."
  end

  private

  def current_procedure
    @procedure = Procedure.find(params[:id])
  end

  def procedure_params
    params.require(:procedure).permit(:date, :grievance)
  end
end
