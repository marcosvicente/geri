require 'rails_helper'

RSpec.describe MaterialsController, type: :controller do

  before(:each) do
    @user = create(:user)
    sign_in @user

    @material = create(:material)
    @material_attributes = attributes_for(:material)
    @material_params = {"id" => @material.id ,"type"=>"entrada", "material"=> {"name"=> @material.name, "quantify"=>"1000000"}}

  end

  after do
    Rails.application.reload_routes!
  end

  describe "GET #index" do
    it "populates an array of material" do
       get :index
       expect(assigns(:materials)).to eq([@material])
     end
     it "renders the :index view" do
       get :index
       expect(response).to render_template(:index)
    end

  end

  describe "GET #show" do
    it 'assigns the requested material as @material' do
      get :show, params: { id: @material  }
      expect(response).to render_template(:show)
    end

    it 'assigns the requested material as @material' do
      get :show, params: { id: @material  }
      expect(assigns(:material)['id']).to eq(@material.id)
    end

  end

  describe "GET #new" do
    it "assigns a new material as @material" do
      get :new
      expect(assigns(:material)).to be_a_new(Material)
    end
  end

  describe "GET #material_entrada" do
    it "assigns the requested user as @user" do
     get :entrada, params: @material_params
     expect(assigns(:material)['id']).to eq(@material.id)
   end
  end

  describe "GET #material_saida" do
    it "assigns the requested user as @user" do
     get :entrada, params: @material_params
     expect(assigns(:material)['id']).to eq(@material.id)
   end
  end

  describe "POST #create" do
    it 'creates the vehicle' do
      post :create, params:{ material: @material_attributes}
      expect(Material.last.id).to eq(@material.id)
    end

  end

  describe "PUT #update" do
    context "valid attributes" do
      it "located the requested @material" do
        put :update, params:  { id: @material_params["id"], material: @material_params['material']}
        expect(response.status).to eq(204)
      end

      it "changes @material's attributes" do
        patch :update, params: { id: @material, material: @material_params['material']}
        @material.reload
        expect(assigns(:material)).to eq(@material)
      end

    end
  end
end
