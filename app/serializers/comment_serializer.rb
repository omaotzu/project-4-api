class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :user, :post
  belongs_to :user
  belongs_to :post
end
