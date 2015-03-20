class BriteAsWaxmenController < ApplicationController
  before_action :set_brite_as_waxman, only: [:show, :edit, :update, :destroy]

  # GET /brite_as_waxmen
  # GET /brite_as_waxmen.json
  def index
    @brite_as_waxmen = BriteAsWaxman.all
  end

  # GET /brite_as_waxmen/1
  # GET /brite_as_waxmen/1.json
  def show
  end

  # GET /brite_as_waxmen/new
  def new
    @brite_as_waxman = BriteAsWaxman.new
  end

  # GET /brite_as_waxmen/1/edit
  def edit
  end

  # POST /brite_as_waxmen
  # POST /brite_as_waxmen.json
  def create
    @brite_as_waxman = BriteAsWaxman.new(brite_as_waxman_params)

    respond_to do |format|
      if @brite_as_waxman.save
        format.html { redirect_to @brite_as_waxman, notice: 'Brite as waxman was successfully created.' }
        format.json { render :show, status: :created, location: @brite_as_waxman }
      else
        format.html { render :new }
        format.json { render json: @brite_as_waxman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brite_as_waxmen/1
  # PATCH/PUT /brite_as_waxmen/1.json
  def update
    respond_to do |format|
      if @brite_as_waxman.update(brite_as_waxman_params)
        format.html { redirect_to @brite_as_waxman, notice: 'Brite as waxman was successfully updated.' }
        format.json { render :show, status: :ok, location: @brite_as_waxman }
      else
        format.html { render :edit }
        format.json { render json: @brite_as_waxman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brite_as_waxmen/1
  # DELETE /brite_as_waxmen/1.json
  def destroy
    @brite_as_waxman.destroy
    respond_to do |format|
      format.html { redirect_to brite_as_waxmen_url, notice: 'Brite as waxman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brite_as_waxman
      @brite_as_waxman = BriteAsWaxman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brite_as_waxman_params
      params.require(:brite_as_waxman).permit(:n, :hs, :ls, :nodeplacement, :growth_type, :alpha, :beta, :m, :bwdist, :bwmin, :bwmax, :name, :description, :status, :generator_id, :type_id, :user_id)
    end
end