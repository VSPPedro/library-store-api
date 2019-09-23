require "rails_helper"

RSpec.describe Api::V1::BookResource, type: :resource do
  let(:book) { create(:book) } 
  subject { described_class.new(book, {}) }

  it { is_expected.to have_primary_key(:id) }
  it { is_expected.to have_attribute(:title) }
  it { is_expected.to have_attribute(:isbn) }
  it { is_expected.to have_attribute(:price) }
  it { is_expected.to have_attribute(:short_description) }
  it { is_expected.to have_one(:author) }
end
