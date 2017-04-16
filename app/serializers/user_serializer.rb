class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :full_name
    has_many :trips

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
