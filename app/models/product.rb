class Product < ActiveRecord::Base
  has_many :comments

  has_attached_file :image,
    :styles => {
        :big => {
            :geometry => "300x300>",
        },
        :medium => {
            :geometry => "150x150>",
        },
        :small => {
            :geometry => "90x90>",
            :position => "south"
        }
    },
    :url => "/system/images/products/:id_partition_:style.:content_type_extension",
    :default_style => :medium

  validates_attachment_size :image, less_than: 2.megabytes
  validates_attachment_content_type :image, content_type: /image\/[^\/]+/
end
