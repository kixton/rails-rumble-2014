class Scale < ActiveRecord::Base
  belongs_to :category
  has_many :entities_scales
  has_many :entities, through: :entities_scales
end
