require 'rails_helper'

RSpec.describe Author, type: :model do
  it_behaves_like "a valid factory for", :author

  context "Associations" do
    it { is_expected.to have_many(:books) }
  end

  context "Validations" do
    it { is_expected.to validate_presence_of(:name) }
  end
end
