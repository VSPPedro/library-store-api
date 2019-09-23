require "rails_helper"

RSpec.describe Api::V1::AuthorsController, type: :routing do
  it_behaves_like "a CRUD routes for", "api/v1/authors"
end
