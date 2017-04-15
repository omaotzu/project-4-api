class TripSerializer < ActiveModel::Serializer
  attributes :id, :trip_name, :start_date, :leave_date
end
