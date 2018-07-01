require 'rails_helper'

RSpec.describe "materials/index", type: :view do
  before(:each) do
    assign(:materials, [
      Material.create!(
        :name => "Name"
      ),
      Material.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of materials" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
