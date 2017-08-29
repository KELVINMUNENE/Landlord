class SaccosController < ApplicationController
  before_action :set_sacco, only: [:show, :edit, :update, :destroy]

  # GET /saccos
  # GET /saccos.json
  def index
    @saccos = Sacco.all
  end

  # GET /saccos/1
  # GET /saccos/1.json
  def show
  end

  # GET /saccos/new
  def new
    @sacco = Sacco.new
  end

  # GET /saccos/1/edit
  def edit
  end

  # POST /saccos
  # POST /saccos.json
  def create
    @sacco = Sacco.new(sacco_params)

    respond_to do |format|
      if @sacco.save
        format.html { redirect_to @sacco, notice: 'Sacco was successfully created.' }
        format.json { render :show, status: :created, location: @sacco }
      else
        format.html { render :new }
        format.json { render json: @sacco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saccos/1
  # PATCH/PUT /saccos/1.json
  def update
    respond_to do |format|
      if @sacco.update(sacco_params)
        format.html { redirect_to @sacco, notice: 'Sacco was successfully updated.' }
        format.json { render :show, status: :ok, location: @sacco }
      else
        format.html { render :edit }
        format.json { render json: @sacco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saccos/1
  # DELETE /saccos/1.json
  def destroy
    @sacco.destroy
    respond_to do |format|
      format.html { redirect_to saccos_url, notice: 'Sacco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sacco
      @sacco = Sacco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sacco_params
      params.fetch(:sacco, {})
    end
end
