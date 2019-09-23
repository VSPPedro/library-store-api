module Api::V1
  class AuthorResource < JSONAPI::Resource
    # == ASSOCIATIONS =======================================================
    has_many :books
    # == ATTRIBUTES =========================================================
    attribute :name
  end
end
