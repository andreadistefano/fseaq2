class UnitaController < ApplicationController
  before_action :set_unita, only: [:show, :edit, :update, :destroy]

  # GET /unita
  # GET /unita.json
  def index
    @unita = Unita.all
  end

  # GET /unita/1
  # GET /unita/1.json
  def show
  end

  # GET /unita/new
  def new
    @unita = Unita.new
  end

  # GET /unita/1/edit
  def edit
  end

  # POST /unita
  # POST /unita.json
  def create
    @unita = Unita.new(unita_params)

    respond_to do |format|
      if @unita.save
        format.html { redirect_to @unita, notice: 'Unita was successfully created.' }
        format.json { render :show, status: :created, location: @unita }
      else
        format.html { render :new }
        format.json { render json: @unita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unita/1
  # PATCH/PUT /unita/1.json
  def update
    respond_to do |format|
      if @unita.update(unita_params)
        format.html { redirect_to @unita, notice: 'Unita was successfully updated.' }
        format.json { render :show, status: :ok, location: @unita }
      else
        format.html { render :edit }
        format.json { render json: @unita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unita/1
  # DELETE /unita/1.json
  def destroy
    @unita.destroy
    respond_to do |format|
      format.html { redirect_to unita_index_url, notice: 'Unita was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unita
      @unita = Unita.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unita_params
      params.require(:unita).permit(:nome, :branca_id)
    end
end
