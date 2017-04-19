class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  belongs_to :stop
  has_many :comments
  has_many :images
end
