class Product < ApplicationRecord

  validates :sku, presence: true
  validates :title, presence: true, length: {minimum:10, maximum:40}
  validates :price, presence: true
  validates :quantity, presence: true
  belongs_to :category
  def self.search(term)
    res = []
    if term && !term.empty?
      res << Product.find_by(title: term)
    end
    res
  end
end
