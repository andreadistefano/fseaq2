class CerimonieController < ApplicationController
  before_action :set_cerimonia, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cerimonie = Cerimonia.all
    respond_with(@cerimonie)
  end

  def show
    respond_with(@cerimonia)
  end

  def new
    @cerimonia = Cerimonia.new
    respond_with(@cerimonia)
  end

  def edit
  end

  def create
    @cerimonia = Cerimonia.new(cerimonia_params)
    @cerimonia.save
    respond_with(@cerimonia)
  end

  def update
    @cerimonia.update(cerimonia_params)
    respond_with(@cerimonia)
  end

  def destroy
    @cerimonia.destroy
    respond_with(@cerimonia)
  end

  private
    def set_cerimonia
      @cerimonia = Cerimonia.find(params[:id])
    end

    def cerimonia_params
      params.require(:cerimonia).permit(:socio_id, :distintivo_id, :data)
    end
end
