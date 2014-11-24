class NotizieController < ApplicationController
  before_action :set_notizia, only: [:show, :edit, :update, :destroy]

  # GET /notizie
  # GET /notizie.json
  def index
    @notizie = Notizia.all
    respond_to do |format|
      format.js
      format.html
    end
  end

  # GET /notizie/1
  # GET /notizie/1.json
  def show
  end

  # GET /notizie/new
  def new
    @notizia = Notizia.new
  end

  # GET /notizie/1/edit
  def edit
  end

  # POST /notizie
  # POST /notizie.json
  def create
    @notizia = Notizia.new(notizia_params)

    respond_to do |format|
      if @notizia.save
        format.html { redirect_to @notizia, notice: 'Notizia was successfully created.' }
        format.json { render :show, status: :created, location: @notizia }
      else
        format.html { render :new }
        format.json { render json: @notizia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notizie/1
  # PATCH/PUT /notizie/1.json
  def update
    respond_to do |format|
      if @notizia.update(notizia_params)
        format.html { redirect_to @notizia, notice: 'Notizia was successfully updated.' }
        format.json { render :show, status: :ok, location: @notizia }
      else
        format.html { render :edit }
        format.json { render json: @notizia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notizie/1
  # DELETE /notizie/1.json
  def destroy
    @notizia.destroy
    respond_to do |format|
      format.html { redirect_to notizie_url, notice: 'Notizia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notizia
      @notizia = Notizia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notizia_params
      params[:notizia]
      params.require(:notizia).permit(:title, :text)
    end
end
