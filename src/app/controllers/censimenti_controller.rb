class CensimentiController < ApplicationController
  before_action :set_censimento, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @censimenti = Censimento.all
    respond_with(@censimenti)
  end

  def show
    respond_with(@censimento)
  end

  def new
    @censimento = Censimento.new
    respond_with(@censimento)
  end

  def edit
  end

  def create
    @censimento = Censimento.new(censimento_params)
    @censimento.save
    respond_with(@censimento)
  end

  def update
    @censimento.update(censimento_params)
    respond_with(@censimento)
  end

  def destroy
    @censimento.destroy
    respond_with(@censimento)
  end

  private
    def set_censimento
      @censimento = Censimento.find(params[:id])
    end

    def censimento_params
      params.require(:censimento).permit(:anno, :socio_id, :unita_id, :capo_gruppo, :vice_capo_gruppo)
    end
end
