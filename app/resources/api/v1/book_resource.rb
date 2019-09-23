module Api::V1
  class BookResource < JSONAPI::Resource
    # == ASSOCIATIONS +======================================================
    has_one :author
    # == ATTRIBUTES =========================================================
    attributes :title, :isbn, :price, :short_description
  end
end
