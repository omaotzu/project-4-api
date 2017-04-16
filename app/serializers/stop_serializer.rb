class StopSerializer < ActiveModel::Serializer
  attributes :id, :place, :start_date, :leave_date
  belongs_to :trip
  has_many :posts
end
