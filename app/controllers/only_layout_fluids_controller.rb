class OnlyLayoutFluidsController < ApplicationController
  before_action :set_only_layout_fluid, only: [:show, :edit, :update, :destroy]

  # GET /only_layout_fluids
  # GET /only_layout_fluids.json
  def index
    @only_layout_fluids = OnlyLayoutFluid.all
  end

  # GET /only_layout_fluids/1
  # GET /only_layout_fluids/1.json
  def show
  end

  # GET /only_layout_fluids/new
  def new
    @only_layout_fluid = OnlyLayoutFluid.new
  end

  # GET /only_layout_fluids/1/edit
  def edit
  end

  # POST /only_layout_fluids
  # POST /only_layout_fluids.json
  def create
    @only_layout_fluid = OnlyLayoutFluid.new(only_layout_fluid_params)

    respond_to do |format|
      if @only_layout_fluid.save
        format.html { redirect_to @only_layout_fluid, notice: 'Only layout fluid was successfully created.' }
        format.json { render action: 'show', status: :created, location: @only_layout_fluid }
      else
        format.html { render action: 'new' }
        format.json { render json: @only_layout_fluid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /only_layout_fluids/1
  # PATCH/PUT /only_layout_fluids/1.json
  def update
    respond_to do |format|
      if @only_layout_fluid.update(only_layout_fluid_params)
        format.html { redirect_to @only_layout_fluid, notice: 'Only layout fluid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @only_layout_fluid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /only_layout_fluids/1
  # DELETE /only_layout_fluids/1.json
  def destroy
    @only_layout_fluid.destroy
    respond_to do |format|
      format.html { redirect_to only_layout_fluids_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_only_layout_fluid
      @only_layout_fluid = OnlyLayoutFluid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def only_layout_fluid_params
      params.require(:only_layout_fluid).permit(:name, :age, :qualification, :description)
    end
end
