class Event < ActiveRecord::Base
  attr_accessible :title, :date, :text, :tag_id
  belongs_to :tag
  extend FriendlyId
  friendly_id :title, :use => [:slugged, :history]
end

