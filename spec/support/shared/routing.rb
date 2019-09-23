RSpec.shared_examples "a CRUD routes for" do |path|
  it { expect(get: path.to_s).to route_to("#{path}#index") }
  it { expect(get: "#{path}/1").to route_to("#{path}#show", id: "1") }
  it { expect(post: path.to_s).to route_to("#{path}#create") }
  it { expect(put: "#{path}/1").to route_to("#{path}#update", id: "1") }
  it { expect(patch: "#{path}/1").to route_to("#{path}#update", id: "1") }
  it { expect(delete: "#{path}/1").to route_to("#{path}#destroy", id: "1") }
end