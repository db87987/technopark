class Line < ActiveRecord::Base
  attr_accessible :text, :img
  belongs_to :block
end


