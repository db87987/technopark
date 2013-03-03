class Category < ActiveRecord::Base
  attr_accessible :title
  has_many :articles
  extend FriendlyId
  friendly_id :title, :use => [:slugged, :history]
end
