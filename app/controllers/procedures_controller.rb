class ProceduresController < ApplicationController
  before_action :current_procedure, only: [:show, :edit, :update]
  def index
    @procedures = Procedure.all
  end

  def show
  end

  def new
    @procedure = Procedure.new
  end

  def create
    @procedure = Procedure.new(procedure_params)
    @procedure.save
    redirect_to procedures_path
  end

  def edit
  end

  def update
  end

  private

  def current_procedure
    @procedure = Procedure.find(params:id)
  end

  def procedure_params
    params.require(:procedure).permit(:date, :grievance)
  end

end
