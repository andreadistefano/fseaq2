class DistintiviController < ApplicationController
  before_action :set_distintivo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @distintivi = Distintivo.all
    respond_with(@distintivi)
  end

  def show
    respond_with(@distintivo)
  end

  def new
    @distintivo = Distintivo.new
    respond_with(@distintivo)
  end

  def edit
  end

  def create
    @distintivo = Distintivo.new(distintivo_params)
    @distintivo.save
    respond_with(@distintivo)
  end

  def update
    @distintivo.update(distintivo_params)
    respond_with(@distintivo)
  end

  def destroy
    @distintivo.destroy
    respond_with(@distintivo)
  end

  private
    def set_distintivo
      @distintivo = Distintivo.find(params[:id])
    end

    def distintivo_params
      params.require(:distintivo).permit(:nome)
    end
end
