class Article < ActiveRecord::Base
  attr_accessible :title, :img, :text, :category_id, :delete_img, :file1, :file2, :file3, :delete_file1, :delete_file2, :delete_file3
  has_many :enclosures, :as => :attachable
  belongs_to :category
  has_attached_file :img, :styles => { :medium => "770", :thumb => "100x100>" }
  has_attached_file :file1
  has_attached_file :file2
  has_attached_file :file3
  
  
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
   
   private

     def delete_file1!
       del = delete_file1.to_s
       self.file1 = nil if del == "1" || del == "true"
       true
     end
     
     def delete_file2!
       del = delete_file2.to_s
       self.file2 = nil if del == "1" || del == "true"
       true
     end
     
     def delete_file3!
       del = delete_file3.to_s
       self.file3 = nil if del == "1" || del == "true"
       true
     end
     
     
  
  
end
