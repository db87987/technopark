class Article < ActiveRecord::Base
  attr_accessible :title, :img, :text, :category_id, :delete_img, :sn
  has_many :enclosures, :as => :attachable
  belongs_to :category
  has_attached_file :img, :styles => { :medium => "770", :thumb => "100x100>" }
  before_validation :clear_img

  def delete_img=(value)
    @delete_img = !value.to_i.zero?
  end

  def delete_img
    !!@delete_img
  end
  alias_method :delete_img?, :delete_img


  def clear_img
    self.img = nil if delete_img? && !img.dirty?
  end
  
end
