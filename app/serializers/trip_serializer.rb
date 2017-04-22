class TripSerializer < ActiveModel::Serializer
  attributes :id, :trip_name, :start_date, :leave_date, :user_id
  belongs_to :user
  has_many :stops
end
