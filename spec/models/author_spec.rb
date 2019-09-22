require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have a valid factory" do
    expect(build(:author)).to be_valid
  end

  context "Validations" do
    it { is_expected.to validate_presence_of(:name) }
  end
end
