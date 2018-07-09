require 'rails_helper'

RSpec.describe "Materials", type: :request do
  before(:each) do
    @user = create(:user)
    sign_in @user

    @material = create(:material)
    @material_attributes = attributes_for(:material)
    @material_params = {"id" => @material.id ,"type"=>"entrada", "material"=> {"quantify"=>"1000000"}}

  end

  it "creates a Material and redirects to the Material's page" do
    get '/materials/new'

    expect(response).to render_template(:new)

    post "/materials", params:{ material: @material_attributes}

    expect(response).to redirect_to(assigns(:material))

    follow_redirect!

    expect(response).to render_template(:show)
    expect(response.body).to include("Material foi criado.")

    end
  end
