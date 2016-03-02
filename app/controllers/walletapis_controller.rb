class WalletapisController < ApplicationController
  before_action :set_walletapi, only: [:show, :edit, :update, :destroy]

  # GET /walletapis
  # GET /walletapis.json
  def index
    @walletapis = Walletapi.all
  end

  # GET /walletapis/1
  # GET /walletapis/1.json
  def show
  end

  # GET /walletapis/new
  def new
    @walletapi = Walletapi.new
  end

  # GET /walletapis/1/edit
  def edit
  end

  # POST /walletapis
  # POST /walletapis.json
  def create
    @walletapi = Walletapi.new(walletapi_params)

    respond_to do |format|
      if @walletapi.save
        format.html { redirect_to @walletapi, notice: 'Walletapi was successfully created.' }
        format.json { render :show, status: :created, location: @walletapi }
      else
        format.html { render :new }
        format.json { render json: @walletapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /walletapis/1
  # PATCH/PUT /walletapis/1.json
  def update
    respond_to do |format|
      if @walletapi.update(walletapi_params)
        format.html { redirect_to @walletapi, notice: 'Walletapi was successfully updated.' }
        format.json { render :show, status: :ok, location: @walletapi }
      else
        format.html { render :edit }
        format.json { render json: @walletapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walletapis/1
  # DELETE /walletapis/1.json
  def destroy
    @walletapi.destroy
    respond_to do |format|
      format.html { redirect_to walletapis_url, notice: 'Walletapi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walletapi
      @walletapi = Walletapi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def walletapi_params
      params.require(:walletapi).permit(:amount, :date, :org)
    end
end
