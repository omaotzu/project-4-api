class TripSerializer < ActiveModel::Serializer
  attributes :id, :trip_name, :start_date, :leave_date
  has_many :stops
end
