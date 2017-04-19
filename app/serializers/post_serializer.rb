class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :image_src
  belongs_to :stop
  has_many :comments

  def image_src
    object.image.url
  end
end
