class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :post
  belongs_to :user
  belongs_to :post
end
