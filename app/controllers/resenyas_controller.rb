class ResenyasController < ApplicationController
  before_action :set_resenya, only: %i[ show edit update destroy ]

  # GET /resenyas or /resenyas.json
  def index
    @resenyas = Resenya.all
  end

  # GET /resenyas/1 or /resenyas/1.json
  def show
    redirect_to root_path
  end

  # GET /resenyas/new
  def new
    @resenya = Resenya.new
  end

  # GET /resenyas/1/edit
  def edit
  end

  # POST /resenyas or /resenyas.json
  def create
    @resenya = Resenya.new(resenya_params)

    respond_to do |format|
      if @resenya.save
        format.html { redirect_to @resenya, notice: "Resenya was successfully created." }
        format.json { render :show, status: :created, location: @resenya }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resenya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resenyas/1 or /resenyas/1.json
  def update
    respond_to do |format|
      if @resenya.update(resenya_params)
        format.html { redirect_to @resenya, notice: "Resenya was successfully updated." }
        format.json { render :show, status: :ok, location: @resenya }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resenya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resenyas/1 or /resenyas/1.json
  def destroy
    @resenya.destroy
    respond_to do |format|
      format.html { redirect_to resenyas_url, notice: "Resenya was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resenya
      @resenya = Resenya.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resenya_params
      params.require(:resenya).permit(:valoracion, :descripcion, :product_id, :account_id)
    end
end
