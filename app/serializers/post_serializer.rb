class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user
  belongs_to :user
  belongs_to :stop
  has_many :comments
  has_many :images
end
