require 'rails_helper'

describe Rack::Attack do
  include Rack::Test::Methods

  before(:each) do
    setup_rack_attack_cache_store
    avoid_test_overlaps_in_cache
  end

  def setup_rack_attack_cache_store
    Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new
  end

  def avoid_test_overlaps_in_cache
    Rails.cache.clear
  end

  def app
    Rails.application
  end

  describe "throttle excessive requests by IP address" do
    let(:limit) { 20 }
  
    context "number of requests is lower than the limit" do
      it "does not change the request status" do
        limit.times { get "/api/v1/books" }
        expect(last_response.status).to eq(200)
      end
    end
  
    context "number of requests is higher than the limit" do
      it "changes the request status to 429(Too Many Requests)" do
        (limit * 2).times { get "/api/v1/books" }
        expect(last_response.status).to eq(429)
      end
    end
  end
end