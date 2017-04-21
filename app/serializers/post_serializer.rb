class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user, :get_upvotes, :get_downvotes, :value_for_money, :night_life, :culture, :hospitality

  belongs_to :user
  belongs_to :stop
  
  has_many :comments
  has_many :images
end
