class ImageSerializer < ActiveModel::Serializer
  attributes :id, :user, :post, :image_src
  belongs_to :post
  belongs_to :user

  def image_src
    object.image.url
  end
end
