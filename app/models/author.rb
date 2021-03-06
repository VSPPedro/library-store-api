class Author < ApplicationRecord
  # == ASSOCIATIONS =========================================================
  has_many :books
  # == VALIDATIONS ==========================================================
  validates :name, presence: true
end
