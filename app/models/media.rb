class Media < ActiveRecord::Base
  belongs_to :real_state

  has_attached_file :image, :styles => { :small => "124x124#" }

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 2.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
