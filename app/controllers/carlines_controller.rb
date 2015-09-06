class CarlinesController < ApplicationController
  before_action :set_carline, only: [:show, :edit, :update, :destroy]

  # GET /carlines
  # GET /carlines.json
  def index
    @carlines = Carline.all
  end

  # GET /carlines/1
  # GET /carlines/1.json
  def show
  end

  # GET /carlines/new
  def new
    @carline = Carline.new
  end

  # GET /carlines/1/edit
  def edit
  end

  # POST /carlines
  # POST /carlines.json
  def create
    @carline = Carline.new(carline_params)

    respond_to do |format|
      if @carline.save
        format.html { redirect_to @carline, notice: 'Carline was successfully created.' }
        format.json { render :show, status: :created, location: @carline }
      else
        format.html { render :new }
        format.json { render json: @carline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carlines/1
  # PATCH/PUT /carlines/1.json
  def update
    respond_to do |format|
      if @carline.update(carline_params)
        format.html { redirect_to @carline, notice: 'Carline was successfully updated.' }
        format.json { render :show, status: :ok, location: @carline }
      else
        format.html { render :edit }
        format.json { render json: @carline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carlines/1
  # DELETE /carlines/1.json
  def destroy
    @carline.destroy
    respond_to do |format|
      format.html { redirect_to carlines_url, notice: 'Carline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carline
      @carline = Carline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carline_params
      params.require(:carline).permit(:name, :phone, :address)
    end
end
