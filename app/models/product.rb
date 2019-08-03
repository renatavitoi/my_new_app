class Product < ApplicationRecord


  def self.search(search_term)
  if search
    Product.where("name ilike ?", "%#{search_term}%")
  else
    Product.where("name LIKE ?", "%#{search_term}%")
   end
  end
end
