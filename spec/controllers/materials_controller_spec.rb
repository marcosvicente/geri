require 'rails_helper'

RSpec.describe MaterialsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Material. As you add validations to Material, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MaterialsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      material = Material.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      material = Material.create! valid_attributes
      get :show, params: {id: material.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      material = Material.create! valid_attributes
      get :edit, params: {id: material.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Material" do
        expect {
          post :create, params: {material: valid_attributes}, session: valid_session
        }.to change(Material, :count).by(1)
      end

      it "redirects to the created material" do
        post :create, params: {material: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Material.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {material: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      let(:resource) { create :material }
      it "can not update if old quantify for biggers the new quantify" do
        put :update, params: {id: material.to_param, material: new_attributes}, session: valid_session

      end
      it "updates the requested material" do
        material = Material.create! valid_attributes
        put :update, params: {id: material.to_param, material: new_attributes}, session: valid_session
        material.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the material" do
        material = Material.create! valid_attributes
        put :update, params: {id: material.to_param, material: valid_attributes}, session: valid_session
        expect(response).to redirect_to(material)
      end

      it "should not update if new quantify for bigger than old quantify " do
        material = Material.find_by(:name => 'lapis')
        material.quantify = 500
        expect(material).to be_valid
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        material = Material.create! valid_attributes
        put :update, params: {id: material.to_param, material: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested material" do
      material = Material.create! valid_attributes
      expect {
        delete :destroy, params: {id: material.to_param}, session: valid_session
      }.to change(Material, :count).by(-1)
    end

    it "redirects to the materials list" do
      material = Material.create! valid_attributes
      delete :destroy, params: {id: material.to_param}, session: valid_session
      expect(response).to redirect_to(materials_url)
    end
  end

end
