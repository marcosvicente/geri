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
    if @material.save
      redirect_to @material
      flash[:notice] = 'Material foi criado.'
    else
      render :new
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    if hour_block == true
      if quantify_can_be_bigger == true && params[:type] == "entrada"
        entrada_and_saida_update
      elsif quantify_can_be_bigger == false && params[:type] == "saida"
        entrada_and_saida_update
      else
        flash[:notice] = 'Material não foi atualizado.'
      end
    else
      flash[:notice] = 'Material só pode ser atualizada entre ás 9 e as 19 horas.'

    end
  end

  private
    def entrada_and_saida_update
      if @material.update(material_params)
        flash[:notice] = 'Material foi atualizado.'
        redirect_to @material
      else
        flash[:notice] = 'Material não foi atualizado.'
        render :edit
      end
    end

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
        valueNew = @params[:quantify].to_i
        valueOld =  @material.quantify.to_i
        if valueNew > valueOld
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
      params.require(:material).permit(:name, :quantify)
    end

end
