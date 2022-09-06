class VendeursController < ApplicationController
  before_action :set_vendeur, only: %i[ show edit update destroy ]

  # GET /vendeurs or /vendeurs.json
  def index
    @vendeurs = Vendeur.all
  end

  # GET /vendeurs/1 or /vendeurs/1.json
  def show
    @Produits = Produit.where(vendeur_id: params[:id])
  end

  # GET /vendeurs/new
  def new
    @vendeur = Vendeur.new
  end

  # GET /vendeurs/1/edit
  def edit
  end

  # POST /vendeurs or /vendeurs.json
  def create
    @vendeur = Vendeur.new(vendeur_params)

    respond_to do |format|
      if @vendeur.save
        format.html { redirect_to vendeur_url(@vendeur), notice: "Vendeur was successfully created." }
        format.json { render :show, status: :created, location: @vendeur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vendeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendeurs/1 or /vendeurs/1.json
  def update
    respond_to do |format|
      if @vendeur.update(vendeur_params)
        format.html { redirect_to vendeur_url(@vendeur), notice: "Vendeur was successfully updated." }
        format.json { render :show, status: :ok, location: @vendeur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vendeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendeurs/1 or /vendeurs/1.json
  def destroy
    @vendeur.destroy
    respond_to do |format|
      format.html { redirect_to vendeurs_url, notice: "Vendeur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendeur
      @vendeur = Vendeur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vendeur_params
      params.require(:vendeur).permit(:nameshop, :email)
    end
end
