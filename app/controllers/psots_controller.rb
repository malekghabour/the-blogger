class PsotsController < ApplicationController
  before_action :set_psot, only: %i[ show edit update destroy ]

  # GET /psots or /psots.json
  def index
    @psots = Psot.all
  end

  # GET /psots/1 or /psots/1.json
  def show
  end

  # GET /psots/new
  def new
    @psot = Psot.new
  end

  # GET /psots/1/edit
  def edit
  end

  # POST /psots or /psots.json
  def create
    @psot = Psot.new(psot_params)

    respond_to do |format|
      if @psot.save
        format.html { redirect_to @psot, notice: "Psot was successfully created." }
        format.json { render :show, status: :created, location: @psot }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @psot.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /psots/1 or /psots/1.json
  def update
    respond_to do |format|
      if @psot.update(psot_params)
        format.html { redirect_to @psot, notice: "Psot was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @psot }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @psot.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /psots/1 or /psots/1.json
  def destroy
    @psot.destroy!

    respond_to do |format|
      format.html { redirect_to psots_path, notice: "Psot was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psot
      @psot = Psot.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def psot_params
      params.fetch(:psot, {})
    end
end
