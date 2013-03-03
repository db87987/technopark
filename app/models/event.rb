class Event < ActiveRecord::Base
  attr_accessible :title, :date, :text, :tag_id
  belongs_to :tag
end

