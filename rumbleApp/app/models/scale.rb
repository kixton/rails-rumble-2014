class Scale < ActiveRecord::Base
  belongs_to :category
  has_many :entites_scales
  has_many :entities, through: :entities_scales
end
