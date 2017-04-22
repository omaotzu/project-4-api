class StopSerializer < ActiveModel::Serializer
  attributes :id, :place, :start_date , :value_for_money, :leave_date, :country, :lat, :lng, :value_for_money, :night_life, :culture, :hospitality, :average_value_for_money, :average_night_life, :average_culture, :average_hospitality

  belongs_to :trip
  has_many :posts
  belongs_to :user

  def average_value_for_money
    return "N/A" if object.posts.empty?
    object.posts.reduce(0) { |sum, post| sum + (post.value_for_money || 0) } / object.posts.length
  end
  def average_night_life
    return "N/A" if object.posts.empty?
    object.posts.reduce(0) { |sum, post| sum + (post.night_life || 0) } / object.posts.length
  end
  def average_culture
    return "N/A" if object.posts.empty?
    object.posts.reduce(0) { |sum, post| sum + (post.culture || 0) } / object.posts.length
  end
  def average_hospitality
    return "N/A" if object.posts.empty?
    object.posts.reduce(0) { |sum, post| sum + (post.hospitality || 0) } / object.posts.length
  end
end
