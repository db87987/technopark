class Block < ActiveRecord::Base
  attr_accessible :title, :img, :category_id
  belongs_to :category
  has_many :lines
end


