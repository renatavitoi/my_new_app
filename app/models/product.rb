class Product < ApplicationRecord


  def self.search(search_term)
    Product.where("name ilike ? OR description ilike ?", "%#{search_term}%", "%#{search_term}%")
  end
end
