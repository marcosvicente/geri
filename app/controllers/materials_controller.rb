class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]

  # GET /materials
  # GET /materials.json
  def index
    hour_block
    @materials = Material.all
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
  end

  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)

    respond_to do |format|
      if @material.save
        format.html { redirect_to @material, notice: 'Material was successfully created.' }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render :new }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    if hour_block == true
      respond_to do |format|
        if @material.update(material_params)
          format.html { redirect_to @material, notice: 'Material was successfully updated.' }
          format.json { render :show, status: :ok, location: @material }
        else
          format.html { render :edit }
          format.json { render json: @material.errors, status: :unprocessable_entity }
        end
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def hour_block
      t = Time.zone.now

      if t.hour < 18 && t.hour > 9
        return true
      end
    end

    def set_material
      @material = Material.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit(:name)
    end
end
