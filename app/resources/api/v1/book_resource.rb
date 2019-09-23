module Api::V1
  class BookResource < JSONAPI::Resource
    # == ASSOCIATIONS +======================================================
    has_one :author
    # == ATTRIBUTES =========================================================
    attributes :title, :isbn, :price, :short_description
    # == FILTERS ============================================================
    filter :title, apply: ->(records, value, _options) {
      records.where('lower(title) LIKE lower(?)', "#{value[0]}%")
    }

    filter :isbn, apply: ->(records, value, _options) {
      records.where('isbn LIKE ?',  "#{value[0]}%")
    }
  end
end
