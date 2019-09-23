require 'rails_helper'

RSpec.describe Book, type: :model do
  it_behaves_like "a valid factory for", :book

  context "Associations" do
    it { is_expected.to belong_to(:author) }
  end

  context "Validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:isbn) }
    it { is_expected.to validate_presence_of(:price) }
  end
end
