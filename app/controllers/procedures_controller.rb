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
  end

  def edit
  end

  def update
  end

  private

  def current_procedure
    @procedure = Procedure.find(params:id)
  end

  def params_procedure
    params.require(:procedure).permit(:date, :status, :grievance)
  end

end
