require 'rails_helper'

RSpec.describe Material, type: :model do
  describe "Validates for material" do
    it "should be save a material" do
      m = Material.new
      m.name = "lapis"
      m.quantify= 5
      m.save!
    end

    it "should be name uniqueness" do
      m = Material.new
      m.name = "lapis"
      m.quantify= 5
      m.save!

      m2 = Material.new
      m2.name = "lapis"
      m2.quantify= 5
      m2.valid?

      expect(m2).to_not be_valid
    end
  end
end
