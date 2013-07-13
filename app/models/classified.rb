class Classified < ActiveRecord::Base
  has_one :tag
  has_one :category, through: :tag
end
