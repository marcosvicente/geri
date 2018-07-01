require 'rails_helper'

RSpec.describe "materials/edit", type: :view do
  before(:each) do
    @material = assign(:material, Material.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit material form" do
    render

    assert_select "form[action=?][method=?]", material_path(@material), "post" do

      assert_select "input[name=?]", "material[name]"
    end
  end
end
