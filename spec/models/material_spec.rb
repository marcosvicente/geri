require 'rails_helper'

RSpec.describe Material, type: :model do

  context "Validates for material" do
    let(:resource) { create :material }

    it "should be valid" do
      expect(resource).to be_valid
    end
  end
end
