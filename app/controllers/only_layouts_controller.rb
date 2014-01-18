class OnlyLayoutsController < ApplicationController
  before_action :set_only_layout, only: [:show, :edit, :update, :destroy]

  # GET /only_layouts
  # GET /only_layouts.json
  def index
    @only_layouts = OnlyLayout.all
  end

  # GET /only_layouts/1
  # GET /only_layouts/1.json
  def show
  end

  # GET /only_layouts/new
  def new
    @only_layout = OnlyLayout.new
  end

  # GET /only_layouts/1/edit
  def edit
  end

  # POST /only_layouts
  # POST /only_layouts.json
  def create
    @only_layout = OnlyLayout.new(only_layout_params)

    respond_to do |format|
      if @only_layout.save
        format.html { redirect_to @only_layout, notice: 'Only layout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @only_layout }
      else
        format.html { render action: 'new' }
        format.json { render json: @only_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /only_layouts/1
  # PATCH/PUT /only_layouts/1.json
  def update
    respond_to do |format|
      if @only_layout.update(only_layout_params)
        format.html { redirect_to @only_layout, notice: 'Only layout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @only_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /only_layouts/1
  # DELETE /only_layouts/1.json
  def destroy
    @only_layout.destroy
    respond_to do |format|
      format.html { redirect_to only_layouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_only_layout
      @only_layout = OnlyLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def only_layout_params
      params.require(:only_layout).permit(:name, :age, :qualification, :description)
    end
end
