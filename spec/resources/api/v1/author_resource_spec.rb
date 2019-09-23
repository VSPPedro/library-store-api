require "rails_helper"

RSpec.describe Api::V1::AuthorResource, type: :resource do
  let(:author) { create(:author) } 
  subject { described_class.new(author, {}) }

  it { is_expected.to have_primary_key(:id) }

  context "Attributes" do
    it { is_expected.to have_attribute(:name) }
  end

  context "Associations" do
    it { is_expected.to have_many(:books) }
  end
end
