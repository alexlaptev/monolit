class SubCategory < ActiveRecord::Base
  attr_accessible :category_id, :name
  belongs_to :category
  has_many :products

  validates :name,:category_id, :presence => true
end
