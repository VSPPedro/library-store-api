require "rails_helper"

RSpec.describe Api::V1::AuthorResource, type: :resource do
  let(:author) { create(:author) } 
  subject { described_class.new(author, {}) }

  it { is_expected.to have_primary_key(:id) }
  it { is_expected.to have_attribute(:name) }
end
