class ServiziController < ApplicationController
  before_action :set_servizio, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @servizi = Servizio.all
    respond_with(@servizi)
  end

  def show
    respond_with(@servizio)
  end

  def new
    @servizio = Servizio.new
    respond_with(@servizio)
  end

  def edit
  end

  def create
    @servizio = Servizio.new(servizio_params)
    @servizio.save
    respond_with(@servizio)
  end

  def update
    @servizio.update(servizio_params)
    respond_with(@servizio)
  end

  def destroy
    @servizio.destroy
    respond_with(@servizio)
  end

  private
    def set_servizio
      @servizio = Servizio.find(params[:id])
    end

    def servizio_params
      params.require(:servizio).permit(:socio_id, :unita_id, :capo, :anno)
    end
end
