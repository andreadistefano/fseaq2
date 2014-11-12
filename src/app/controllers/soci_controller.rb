class SociController < ApplicationController
  before_action :set_socio, only: [:show]
  def show
  end
  def set_socio
    @socio = Socio.find(params[:id])
  end
end
