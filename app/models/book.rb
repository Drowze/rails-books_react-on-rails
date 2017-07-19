class Book < ApplicationRecord
  validates :title, uniqueness: true
end
