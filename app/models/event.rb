class Event < ActiveRecord::Base
  attr_accessible :title, :date, :text, :tag_id, :short
  has_many :enclosures, :as => :attachable
  belongs_to :tag
  extend FriendlyId
  friendly_id :title, :use => [:slugged, :history]
end

