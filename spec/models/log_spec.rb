require 'rails_helper'

RSpec.describe Log, type: :model do
  let(:resource) { create :log }
  it "should be save a new log" do
    expect(resource).to be_valid
  end
end
