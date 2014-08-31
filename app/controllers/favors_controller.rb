class FavorsController < ApplicationController
  before_filter :authenticate_user!

  before_action :set_favor, only: [:show, :edit, :update, :destroy]

  # GET /favors
  # GET /favors.json
  def index
    @favors = Favor.all
  end

  # GET /favors/1
  # GET /favors/1.json
  def show
  end

  # GET /favors/new
  def new
    @favor = Favor.new
  end

  # GET /favors/1/edit
  def edit
  end

  # POST /favors
  # POST /favors.json
  def create
    @favor = Favor.new(favor_params)

    respond_to do |format|
      if @favor.save
        format.html { redirect_to @favor, notice: 'Favor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @favor }
      else
        format.html { render action: 'new' }
        format.json { render json: @favor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favors/1
  # PATCH/PUT /favors/1.json
  def update
    respond_to do |format|
      if @favor.update(favor_params)
        format.html { redirect_to @favor, notice: 'Favor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @favor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favors/1
  # DELETE /favors/1.json
  def destroy
    @favor.destroy
    respond_to do |format|
      format.html { redirect_to favors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favor
      @favor = Favor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favor_params
      params.require(:favor).permit(:address, :latitude, :longitude, :title, :description, :user_id)
    end
end
