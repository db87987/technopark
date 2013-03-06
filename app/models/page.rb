class Page < ActiveRecord::Base
  attr_accessible :text, :img, :title, :delete_img
  has_attached_file :img, :styles => { :medium => "770", :thumb => "100x100>" }
  extend FriendlyId
  friendly_id :title, :use => [:slugged, :history]
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
