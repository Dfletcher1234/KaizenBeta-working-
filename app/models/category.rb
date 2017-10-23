class Category < ApplicationRecord
has_many :subcategories
has_many :users, through: :subcategories
end
