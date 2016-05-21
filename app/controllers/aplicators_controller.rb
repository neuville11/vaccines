class AplicatorsController < ApplicationController
  before_action :set_aplicator, only: [:show, :edit, :update, :destroy]

  # GET /aplicators
  # GET /aplicators.json
  def index
    
  end

  def aplicator
    @aplicators = Aplicator.all
  end
  # GET /aplicators/1
  # GET /aplicators/1.json
  def show
  end

  # GET /aplicators/new
  def new
    @aplicator = Aplicator.new
  end

  # GET /aplicators/1/edit
  def edit
  end

  # POST /aplicators
  # POST /aplicators.json
  def create
    @aplicator = Aplicator.new(aplicator_params)

    respond_to do |format|
      if @aplicator.save
        format.html { redirect_to @aplicator, notice: 'Aplicator was successfully created.' }
        format.json { render :show, status: :created, location: @aplicator }
      else
        format.html { render :new }
        format.json { render json: @aplicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aplicators/1
  # PATCH/PUT /aplicators/1.json
  def update
    respond_to do |format|
      if @aplicator.update(aplicator_params)
        format.html { redirect_to @aplicator, notice: 'Aplicator was successfully updated.' }
        format.json { render :show, status: :ok, location: @aplicator }
      else
        format.html { render :edit }
        format.json { render json: @aplicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplicators/1
  # DELETE /aplicators/1.json
  def destroy
    @aplicator.destroy
    respond_to do |format|
      format.html { redirect_to aplicators_url, notice: 'Aplicator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aplicator
      @aplicator = Aplicator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aplicator_params
      params.require(:aplicator).permit(:name, :prefix, :clinic, :cedProf)
    end
end
