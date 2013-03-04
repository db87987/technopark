class Slide < ActiveRecord::Base
  attr_accessible :sn, :img
  has_attached_file :img, :styles => { :content => "940x545#", :thumb => "100x100>" }
  
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
