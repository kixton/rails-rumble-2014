class Entity < ActiveRecord::Base
  belongs_to :category
  has_many :entities_scales
  has_many :scales, through: :entities_scales
end

#entity model