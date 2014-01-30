class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :inet_price, :image_url

  def image_url
    object.image.blank? ? '' : object.image.url(:small)
  end
end