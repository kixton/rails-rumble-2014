class Category < ActiveRecord::Base
  has_many :scales
  has_many :entities
end
