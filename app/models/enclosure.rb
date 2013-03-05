class Enclosure < ActiveRecord::Base
  attr_accessible :title, :attachment
  belongs_to :attachable, :polymorphic => true
  has_attached_file :attachment

end
