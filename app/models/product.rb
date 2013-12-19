class Product < ActiveRecord::Base
  has_many :juicios

  has_attached_file :image

  validates_attachment_size :image, :less_than => 2.megabytes
  validates_attachment_content_type :image, :content_type => /image\/[^\/]+/
end
