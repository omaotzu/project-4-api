class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :username, :user_id, :user_first_name, :user_last_name, :get_upvotes, :get_downvotes, :value_for_money, :night_life, :culture, :hospitality

  belongs_to :user
  belongs_to :stop

  has_many :comments
  has_many :images

  def username
      object.user.username
  end

  def user_first_name
    object.user.first_name
  end
  def user_last_name
    object.user.last_name
  end
end
