RSpec.shared_examples "a valid factory for" do |resource|
  it { expect(build(resource)).to be_valid }
end