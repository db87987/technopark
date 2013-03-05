class Enclosure < ActiveRecord::Base
  attr_accessible :title, :attachment, :delete_attachment
  belongs_to :attachable, :polymorphic => true
  has_attached_file :attachment
  
  
  private

    def delete_attachment!
      del = delete_attachment.to_s
      self.attachment = nil if del == "1" || del == "true"
      true
    end
end
