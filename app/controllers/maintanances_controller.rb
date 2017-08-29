class MaintanancesController < ApplicationController
  before_action :set_maintanance, only: [:show, :edit, :update, :destroy]

  # GET /maintanances
  # GET /maintanances.json
  def index
    @maintanances = Maintanance.all
  end

  # GET /maintanances/1
  # GET /maintanances/1.json
  def show
  end

  # GET /maintanances/new
  def new
    @maintanance = Maintanance.new
  end

  # GET /maintanances/1/edit
  def edit
  end

  # POST /maintanances
  # POST /maintanances.json
  def create
    @maintanance = Maintanance.new(maintanance_params)

    respond_to do |format|
      if @maintanance.save
        format.html { redirect_to @maintanance, notice: 'Maintanance was successfully created.' }
        format.json { render :show, status: :created, location: @maintanance }
      else
        format.html { render :new }
        format.json { render json: @maintanance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintanances/1
  # PATCH/PUT /maintanances/1.json
  def update
    respond_to do |format|
      if @maintanance.update(maintanance_params)
        format.html { redirect_to @maintanance, notice: 'Maintanance was successfully updated.' }
        format.json { render :show, status: :ok, location: @maintanance }
      else
        format.html { render :edit }
        format.json { render json: @maintanance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintanances/1
  # DELETE /maintanances/1.json
  def destroy
    @maintanance.destroy
    respond_to do |format|
      format.html { redirect_to maintanances_url, notice: 'Maintanance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintanance
      @maintanance = Maintanance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maintanance_params
      params.fetch(:maintanance).permit(:name, :area, :problem, :timestamp)
    end
end
