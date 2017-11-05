class CharityOraganizationsController < ApplicationController
  before_action :set_charity_oraganization, only: [:show, :edit, :update, :destroy]

  # GET /charity_oraganizations
  # GET /charity_oraganizations.json
  def index
    @charity_oraganizations = CharityOraganization.all
  end

  # GET /charity_oraganizations/1
  # GET /charity_oraganizations/1.json
  def show
  end

  # GET /charity_oraganizations/new
  def new
    @charity_oraganization = CharityOraganization.new
  end

  # GET /charity_oraganizations/1/edit
  def edit
  end

  # POST /charity_oraganizations
  # POST /charity_oraganizations.json
  def create
    @charity_oraganization = CharityOraganization.new(charity_oraganization_params)

    respond_to do |format|
      if @charity_oraganization.save
        format.html { redirect_to @charity_oraganization, notice: 'Charity oraganization was successfully created.' }
        format.json { render :show, status: :created, location: @charity_oraganization }
      else
        format.html { render :new }
        format.json { render json: @charity_oraganization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_oraganizations/1
  # PATCH/PUT /charity_oraganizations/1.json
  def update
    respond_to do |format|
      if @charity_oraganization.update(charity_oraganization_params)
        format.html { redirect_to @charity_oraganization, notice: 'Charity oraganization was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_oraganization }
      else
        format.html { render :edit }
        format.json { render json: @charity_oraganization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_oraganizations/1
  # DELETE /charity_oraganizations/1.json
  def destroy
    @charity_oraganization.destroy
    respond_to do |format|
      format.html { redirect_to charity_oraganizations_url, notice: 'Charity oraganization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_oraganization
      @charity_oraganization = CharityOraganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_oraganization_params
      params.require(:charity_oraganization).permit(:name)
    end
end
