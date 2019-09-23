class Book < ApplicationRecord
  # == ASSOCIATIONS =========================================================
  belongs_to :author
  # == VALIDATIONS ==========================================================
  validates :title, :isbn, :price, presence: true 
end
