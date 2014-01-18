class PositonsController < ApplicationController
  before_action :set_positon, only: [:show, :edit, :update, :destroy]

  # GET /positons
  # GET /positons.json
  def index
    @positons = Positon.all
  end

  # GET /positons/1
  # GET /positons/1.json
  def show
  end

  # GET /positons/new
  def new
    @positon = Positon.new
  end

  # GET /positons/1/edit
  def edit
  end

  # POST /positons
  # POST /positons.json
  def create
    @positon = Positon.new(positon_params)

    respond_to do |format|
      if @positon.save
        format.html { redirect_to @positon, notice: 'Positon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @positon }
      else
        format.html { render action: 'new' }
        format.json { render json: @positon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positons/1
  # PATCH/PUT /positons/1.json
  def update
    respond_to do |format|
      if @positon.update(positon_params)
        format.html { redirect_to @positon, notice: 'Positon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @positon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positons/1
  # DELETE /positons/1.json
  def destroy
    @positon.destroy
    respond_to do |format|
      format.html { redirect_to positons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_positon
      @positon = Positon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def positon_params
      params.require(:positon).permit(:work_position)
    end
end
