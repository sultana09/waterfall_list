class ListOfWaterfallsController < ApplicationController
  before_action :set_list_of_waterfall, only: [:show, :edit, :update, :destroy]

  # GET /list_of_waterfalls
  # GET /list_of_waterfalls.json
  def index
    @list_of_waterfalls = ListOfWaterfall.all
  end

  # GET /list_of_waterfalls/1
  # GET /list_of_waterfalls/1.json
  def show
  end

  # GET /list_of_waterfalls/new
  def new
    @list_of_waterfall = ListOfWaterfall.new
  end

  # GET /list_of_waterfalls/1/edit
  def edit
  end

  # POST /list_of_waterfalls
  # POST /list_of_waterfalls.json
  def create
    @list_of_waterfall = ListOfWaterfall.new(list_of_waterfall_params)

    respond_to do |format|
      if @list_of_waterfall.save
        format.html { redirect_to @list_of_waterfall, notice: 'List of waterfall was successfully created.' }
        format.json { render :show, status: :created, location: @list_of_waterfall }
      else
        format.html { render :new }
        format.json { render json: @list_of_waterfall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_of_waterfalls/1
  # PATCH/PUT /list_of_waterfalls/1.json
  def update
    respond_to do |format|
      if @list_of_waterfall.update(list_of_waterfall_params)
        format.html { redirect_to @list_of_waterfall, notice: 'List of waterfall was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_of_waterfall }
      else
        format.html { render :edit }
        format.json { render json: @list_of_waterfall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_of_waterfalls/1
  # DELETE /list_of_waterfalls/1.json
  def destroy
    @list_of_waterfall.destroy
    respond_to do |format|
      format.html { redirect_to list_of_waterfalls_url, notice: 'List of waterfall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_of_waterfall
      @list_of_waterfall = ListOfWaterfall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_of_waterfall_params
      params.require(:list_of_waterfall).permit(:name, :height, :locality, :country, :description)
    end
end
