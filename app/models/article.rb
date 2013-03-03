class Article < ActiveRecord::Base
  attr_accessible :title, :img, :text, :category_id
  belongs_to :category
  has_attached_file :img, :styles => { :medium => "770", :thumb => "100x100>" }
end
