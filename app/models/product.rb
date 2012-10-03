class Product < ActiveRecord::Base
  attr_accessible :color, :description, :img_url, :name, :price, :size, :sub_category_id
  belongs_to :sub_category

  validates :color, :description, :img_url, :name, :price, :sub_category_id, :presence => true
  validates :price, numericality: {greater_than_or_equal: 0.01}
end
