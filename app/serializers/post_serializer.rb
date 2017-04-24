class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :get_balanced_votes, :created_at, :value_for_money, :night_life, :culture, :hospitality

  belongs_to :user
  belongs_to :stop

  has_many :comments
  has_many :images

  def get_balanced_votes
    object.get_upvotes.length - object.get_downvotes.length
  end

end
