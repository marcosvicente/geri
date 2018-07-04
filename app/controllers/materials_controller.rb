class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :entrada, :saida, :update, :destroy]

  # GET /materials
  # GET /materials.json
  def index
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

  # GET /materials/1/entrada
  def entrada
  end

  # GET /materials/1/saida
  def saida
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)

    respond_to do |format|
      if @material.save
        format.html { redirect_to @material, notice: 'Material foi criado.' }
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
    if hour_block == true && quantify_can_be_bigger == false
      respond_to do |format|
        if @material.update(material_params)
          format.html { redirect_to @material, notice: 'Material foi atualizado.' }
          format.json { render :show, status: :ok, location: @material }
        else
          format.html { render :edit }
          format.json { render json: @material.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:notice] = "Não Pode atualizar o material."
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def hour_block
      t = Time.zone.now
      if t.hour < 18 && t.hour > 9
        return true
      else
        return false
      end
    end

    def quantify_can_be_bigger
      @params = material_params
      name = @params[:name]
      @material = Material.find_by(name: name)
      if @params[:quantify].present? && @material != nil
        value1 = @params[:quantify].to_i
        value2 =  @material.quantify.to_i
        if value1 < value2
          return true
        else
          return false
        end
      end
    end

    def set_material
      @material = Material.find(params[:id])
    end

    def material_params
      params.require(:material).permit(:id, :name, :quantify)
    end
end
